;Author Itgel Ganbold 
;ID 800842482
(setq total 0)
(setq gradeList ())
(setq empList (make-hash-table)) 
(setf (gethash 'A empList) '(4.0))
(setf (gethash 'A- empList) '(3.67))
(setf (gethash 'B empList) '(3.0))
(setf (gethash 'B+ empList) '(3.33))
(setf (gethash 'B- empList) '(2.67))
(setf (gethash 'C empList) '(2.0))
(setf (gethash 'C+ empList) '(2.33)) 
(setf (gethash 'C- empList) '(1.67))
(setf (gethash 'D empList) '(1.0))
(setf (gethash 'D+ empList) '(1.33))
(setf (gethash 'F empList) '(0.0))

(defun computeGPA(grades)
    (loop for x in grades
        do (push (car (gethash x empList)) gradeList)
    )
    
    (/ (apply '+ gradeList) (length grades))
)

;Test case
(terpri)
(format t "GPA is: ~d" (computeGPA '(a a b- b+ a- f) ))

