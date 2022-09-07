-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

SELECT * FROM `students` 
JOIN `degrees` 
ON `students`.`degree_id` = `degrees`.`id` 
WHERE `degrees`.`name` = "Corso di Laurea in Economia"

-- 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze

SELECT `degrees`.`name`, `departments`.`name` 
FROM `departments` 
JOIN `degrees` 
ON `departments`.`id` = `degrees`.`department_id` 
WHERE `departments`.`name` = "Dipartimento di Neuroscienze"

-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)

SELECT `courses`.`name`, `teachers`.`name`,`teachers`.`surname` 
FROM `courses` 
JOIN `course_teacher` 
ON `courses`.`id` = `course_teacher`.`course_id` 
JOIN `teachers` 
ON `course_teacher`.`teacher_id` = `teachers`.`id` 
WHERE `teachers`.`id` = 44


-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il
    --relativo dipartimento, in ordine alfabetico per cognome e nome

SELECT `students`.`name`, `students`.`surname`, `departments`.`name`, `degrees`.`name` 
FROM `students` 
JOIN `degrees` 
ON `students`.`degree_id` = `degrees`.`id` 
JOIN `departments` 
ON `degrees`.`department_id` = `departments`.`id` 
ORDER BY `students`.`surname`, `students`.`name` ASC


-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti


-- 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)


--7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per
    -- superare ciascuno dei suoi esami