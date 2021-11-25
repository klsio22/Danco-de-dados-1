/*
 ============= 1 questão ================
 */
SELECT employee.id_employee,
   last_name,
   project.id_project,
   description,
   id_activity,
   employee_projecty.date_end
FROM employee_projecty
   JOIN project USING(id_project)
   JOIN employee USING(id_employee)
WHERE employee_projecty.date_initial BETWEEN '2015-07-01' AND '2015-12-31'
ORDER BY employee_projecty.date_initial ASC
   /*
    ============= 2 ================
    */

   SELECT id_departament,
   employee.last_name,
   employee.salary,
   id_activity,
   last_name
FROM employee_projecty
   JOIN project USING(id_project)
   JOIN employee USING(id_employee)
WHERE employee_projecty.date_initial BETWEEN '2015-07-01' AND '2015-12-31'
ORDER BY employee_projecty.date_initial ASC


   /*
    ============= 3 ================
    */
SELECT employee.id_employee,
   employee.last_name,
   departament.name,
   employee.salary,
   education_level.description
FROM departament
   JOIN employee USING(id_departament)
   JOIN education_level USING (id_education_level)
WHERE departament.name LIKE 'Desenvolvimento de Sistemas'
   AND employee.salary > 500
ORDER BY employee.last_name
   /*
    ============= 4 ================
    */
SELECT employee.id_employee,
   employee.last_name
FROM education_level
   JOIN employee USING(id_education_level)
WHERE education_level.description LIKE 'Doutorado'
ORDER BY employee.last_name