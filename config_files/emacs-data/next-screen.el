(defun prev-screenfull ()
  (interactive)
  (forward-line (- (/ (window-height) 3)))
  (scroll-down (/ (window-height) 3)))

(defun next-screenfull ()
  (interactive)
  (scroll-up (/ (window-height) 3))
  (forward-line (/ (window-height) 3)))


(defun next-line-margin ()
  (interactive)
  (next-line 1)
  )

(defun previous-line-margin ()
  (interactive)
  (previous-line 1)
  )
