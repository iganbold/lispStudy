;Author Itgel Ganbold 
;ID 800842482
(setq resultList ())
(defun multiply-poly-term(poly term)
    (loop for x in poly
        do (push
                (cons 
                    (* (car x) (car term)) 
                    (cons (+ (car (cdr x)) (car (cdr term))) nil)
                )
            resultList)
    )
    
    (if 1 
        (reverse resultList)
    )
)

;Test case
(terpri)
(format t "The result: ~d" 
    (multiply-poly-term '((8 3)(5 0)(6 1)(9 6)) '(2 3))
)