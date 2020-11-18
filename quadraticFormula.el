(defun quadraticformula ()
  (interactive)
   (defvar a 1)
   (defvar b 1)
   (defvar c 1)
   (setq a (read-from-minibuffer "Please enter the coefficient of the x^2 term: " ""))
   (setq a (string-to-number a))
   (setq b (read-from-minibuffer "Please enter the coefficient of the x term: " ""))
   (setq b (string-to-number b))
   (setq c (read-from-minibuffer "Please enter the coefficient of the constant term: " ""))
   (setq c (string-to-number c))
   (setq discriminant (- (* b b) (* 4 a c)))
   (if (< discriminant 0)
       (message "No solution")
     
   (if (> discriminant 0)
    (message "Two distinct roots")
   )
   (if (= discriminant 0)
    (message "Two equal roots")
   )
   (sleep-for 1)
   (setq root1 (/ (+ (* -1 b)(sqrt discriminant)) (* 2 a)))
   (setq root2 (/ (- (* -1 b)(sqrt discriminant)) (* 2 a)))
   (message "1st root is: %s and the 2nd root is: %s" root1 root2)))
(quadraticformula)
