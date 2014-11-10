(setf fixture '(5 2 4 6 1 3))

(defun insertion-sort (seq)
  (_insert (list car seq) (cdar seq) (cddr seq)))

(defun _insert (left elem right)
  (let ((elist (list elem)))
    (cond
      ((null elem)
        left)
      ((null (car left))
        (_insert elist (car right) (cdr right)))
      ((>= (car (last left)) elem)
        (_insert (reverse-cdr left) elem (append (last left) right)))
      (t
        (_insert (append left elist) (car right) (cdr right))))))

(defun reverse-cdr (lst)
  (reverse (cdr (reverse lst))))
