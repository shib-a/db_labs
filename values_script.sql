INSERT INTO hair(hair_specialty,color) VALUES
    ('Curly thick hair', 'Dark'),
    ('Wavy thin hair','Ginger'),
    ('Straight thick hair','Blonde');
INSERT INTO state(state_name,effect_on_metabolism,state_description) VALUES
    ('Asleep','Slowed','A state when a person is sleeping'),
    ('Coma','Slowed','A state when a person is unconscious and unresponsive'),
    ('Awake','No effect','A state when a person is alert and responsive');
INSERT INTO human(name,is_woman) VALUES
    ('Danila','false'),
    ('Gorlock The Destroyer','false'),
    ('Catherine','true');
INSERT INTO human_state(human_id,state_id,time) VALUES 
    (1,1,'11:12:13'),
    (2,3,'03:26:10'),
    (3,2,'14:56:43');
INSERT INTO action(name,location) VALUES
    ('Eat','Dining room'),
    ('Write code','Coworking');
INSERT INTO human_action(action_id,human_id,time) VALUES
    (1,2,'2020-11-10 10:11:03'),
    (2,1,'1990-03-03 06:06:06');
INSERT INTO appearance(hair_id,skin_specialties,body_composition,general_description) VALUES
    (1,null,'Lean','Thin person with an average height'),
    (2,'Has a birthmark','High muscle tone','Athletic person with above average height');
INSERT INTO human_appearance(human_id,appearance_id) VALUES
    (1,1),
    (3,2);
