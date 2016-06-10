(defun next-buffer ()
  "Goto next buffer"
  (interactive)
  (let ((others ()))
    (setq others (nreverse (buffer-list)))
    (while (and others
		(or (not (buffer-file-name (car others)))
		    (eq (cdr (assq 'major-mode
				   (buffer-local-variables (car others))))
			'tags-table-mode)))
      (setq others (cdr others)))
    (if (car others)
	(switch-to-buffer (car others)))))

(defun prev-buffer ()
  "Goto previous buffer"
  (interactive)
  (let ((others ()))
    (setq others (cdr (buffer-list)))
    (while (and others
		(or (not (buffer-file-name (car others)))
		    (eq (cdr (assq 'major-mode
				   (buffer-local-variables (car others))))
			'tags-table-mode)))
      (setq others (cdr others)))
    (if (car others)
	(switch-to-buffer (car others)))))


(defun next-shell ()
  "Goto next shell"
  (interactive)
  (let ((others ()))
    (setq others (nreverse (buffer-list)))
    (while (and others
		(not (or (eq (cdr (assq 'major-mode
				    (buffer-local-variables (car others))))
			     'shell-mode)
			 (eq (cdr (assq 'major-mode
					(buffer-local-variables (car others))))
			     'telnet-mode)
			 (eq (cdr (assq 'major-mode
					(buffer-local-variables (car others))))
			     'ssh-mode))))
      (setq others (cdr others)))
    (if (car others)
	(switch-to-buffer (car others)))))

(defun prev-shell ()
  "Goto previous shell"
  (interactive)
  (let ((others ()))
    (setq others (cdr (buffer-list)))
    (while (and others
		(not (or (eq (cdr (assq 'major-mode
					(buffer-local-variables (car others))))
			     'shell-mode)
			 (eq (cdr (assq 'major-mode
					(buffer-local-variables (car others))))
			     'telnet-mode)
			 (eq (cdr (assq 'major-mode
					(buffer-local-variables (car others))))
			     'ssh-mode))))
      (setq others (cdr others)))
    (if (car others)
	(switch-to-buffer (car others)))))

(defun next-compile ()
  "Goto next compile"
  (interactive)
  (let ((others ()))
    (setq others (nreverse (buffer-list)))
    (while (and others
		(not (or (eq (cdr (assq 'major-mode
				    (buffer-local-variables (car others))))
			     'compilation-mode)
			 (eq (cdr (assq 'major-mode
				    (buffer-local-variables (car others))))
			     'grep-mode))))
      (setq others (cdr others)))
    (if (car others)
	(switch-to-buffer (car others)))))

(defun prev-compile ()
  "Goto previous compile"
  (interactive)
  (let ((others ()))
    (setq others (cdr (buffer-list)))
    (while (and others
		(not (or (eq (cdr (assq 'major-mode
					(buffer-local-variables (car others))))
			     'compilation-mode)
			 (eq (cdr (assq 'major-mode
					(buffer-local-variables (car others))))
			     'grep-mode))))
      (setq others (cdr others)))
    (if (car others)
	(switch-to-buffer (car others)))))

(defun next-dired ()
  "Goto next dired"
  (interactive)
  (let ((others ()))
    (setq others (nreverse (buffer-list)))
    (while (and others
		(not (eq (cdr (assq 'major-mode
				    (buffer-local-variables (car others))))
			 'dired-mode)))
		     (setq others (cdr others)))
    (if (car others)
	(switch-to-buffer (car others)))))

(defun prev-dired ()
  "Goto previous dired"
  (interactive)
  (let ((others ()))
    (setq others (cdr (buffer-list)))
    (while (and others (not (eq (cdr (assq 'major-mode
				    (buffer-local-variables (car others))))
				'dired-mode)))
      (setq others (cdr others)))
    (if others
	(switch-to-buffer (car others)))))


(defun next-gdb ()
  "Goto next gdb"
  (interactive)
  (let ((others ()))
    (setq others (nreverse (buffer-list)))
    (while (and others
		(not (eq (cdr (assq 'major-mode
				    (buffer-local-variables (car others))))
			 'gdb-mode)))
      (setq others (cdr others)))
    (if (car others)
	(switch-to-buffer (car others)))))
;;;      (gdb (concat "gbd " (buffer-file-name))))))

;; (defun project-path (path)
;;   "Returns root path of current project"
;;   (let ((p (file-name-directory path)))
;;     (while (and p (not (file-exists-p (concat p "SNTools.project"))))
;;       (setq p (file-name-directory (substring p 0 -1))))
;;     p))
