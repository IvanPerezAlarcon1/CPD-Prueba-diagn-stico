/* Respuesta pregunta BDD prueba de diagnóstico hecha en SQLserver 2014*/

select co.name,co.start_date,AVG(ev.score) as promedio_curso,STDEV(ev.score) as desv_estandar,min(ev.score) as
nota_minima, max(ev.score) as nota_maxima from evaluations ev
inner join exams ex on ev.exam_fk=ex.pk
inner join courses co on ex.course_fk=co.pk
group by co.name,co.start_date
order by co.name,co.start_date