(require 'package)
(eval-when-compile (require 'cl))
(add-to-list 'package-archives
	     '("elpa" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))

(defvar my-packages '(better-defaults paredit idle-highlight-mode ido-ubiquitous
                                      find-file-in-project magit smex scpaste))

(package-initialize)
(dolist (p my-packages)
  (when (not (package-installed-p p))
        (package-install p)))
