% Prolog Exam Scheduler Data Model

% Define an exam structure
exam(Name, Date, Time, Duration, Venue).

% Sample exams
exam('Mathematics', '2026-04-25', '09:00', '2 hours', 'Room 101').
exam('Computer Science', '2026-04-26', '14:00', '3 hours', 'Room 102').
exam('History', '2026-04-27', '11:00', '1.5 hours', 'Room 103').

% Example rule to find exams on a specific date
exams_on_date(Date, Exam) :- exam(Exam, Date, _, _, _).