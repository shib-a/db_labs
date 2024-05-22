CREATE OR REPLACE FUNCTION trig_func()
RETURNS TRIGGER AS $$
    DECLARE x record;
    BEGIN
    if (new.action_id in
            (select id from action where
                (name = 'Бежать' or name = 'Run')
            ) and new.human_id in
                (select human.id from human where human.id in
                    (select human_id from human_appearance where appearance_id in
                        (select id from appearance where hair_id in
                            (select id from hair where
                                (color = 'Красный' or color = 'Red')
                            )
                        )
                    )
                )
            )
    THEN
        update state set effect_on_metabolism = 'Accelerated' where state.id in (select state_id from human_state where human_state.human_id = new.human_id);
        for x in select * from human where human.id in (select human_id from human_state where state_id in (select state.id from state where effect_on_metabolism = 'Accelerated')) loop
            raise notice '%     , %     ,%', x.id, x.name, x.is_woman;
            end loop;
    end if;
    return new;
    end;
    $$ LANGUAGE plpgsql;
CREATE OR REPLACE TRIGGER trig BEFORE INSERT ON human_action FOR each row execute PROCEDURE trig_func();
