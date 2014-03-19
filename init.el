(add-to-list 'load-path "~/.emacs.d/")
(load "~/.emacs.d/config/cedet.el")
(add-to-list 'load-path (expand-file-name
      "~/.emacs.d/site-lisp/ecb/"))
(require 'ecb)
;(require 'ecb-autoloads)

(load-theme 'wombat t)
(defalias 'yes-or-no-p 'y-or-n-p)
(setq backup-directory-alist `(("." . "~/.saves")))

(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
;; (setq tramp-default-method "ftp")
(tool-bar-mode -1)
(setq display-time-default-load-average nil)
(setq display-time-use-mail-icon t)
(setq display-time-24hr-format t)
(display-battery-mode 1)
(display-time-mode t)
;; show matching bracket
(show-paren-mode 1)
(setq show-paren-delay 0)

(ido-mode t)
(global-linum-mode t)
(setq TeX-PDF-mode t)
(set-scroll-bar-mode 'right)
;; android sdk 
;; (add-to-list 'load-path "~/.emacs.d/modules/")
;; ;; (add-to-list 'load-path "~/.emacs.d/moduloales/android-mode")
;; (setq android-mode-sdk-dir "/opt/android-sdk-update-manager")
;; (require 'android-mode)

;; spotify

(global-set-key (kbd "C-c <C-right>") 'spotify-next)
(global-set-key (kbd "C-c <C-up>") 'spotify-playpause)

;; (set-frame-parameter (selected-frame) 'alpha '(85 85))
;; (add-to-list 'default-frame-alist '(alpha 85 85))


;; mmm-mode for php/html
;; (require 'mmm-mode)
;; (setq mmm-global-mode 'maybe)
;; (mmm-add-mode-ext-class nil "\\.php?\\'" 'html-php)
;; (mmm-add-classes
;;  '((html-php
;;     :submode php-mode
;;     :front "<\\?\\(php\\)?"
;;     :back "\\?>")))
;; (autoload 'php-mode "php-mode" "PHP editing mode" t)
;; (add-to-list 'auto-mode-alist '("\\.php?\\'" . html-mode))

;; YAS 
(require 'yasnippet)
;; (yas/initialize t)
(yas/load-directory  "~/.emacs.d/yasnippet-snippets")
(yas-global-mode 1)
;; pymacs
;; (autoload 'pymacs-apply "pymacs")
;; (autoload 'pymacs-call "pymacs")
;; (autoload 'pymacs-eval "pymacs" nil t)
;; (autoload 'pymacs-exec "pymacs" nil t)
;; (autoload 'pymacs-load "pymacs" nil t)
;; (pymacs-load "ropemacs" "rope-")
;; (setq ropemacs-enable-autoimport t)



;; (require 'auto-complete)
;; (global-auto-complete-mode t)
(defun bind-magit-status-key()
  (local-set-key "\C-c\C-g" 'magit-status))
(defun bind-compile-key ()
  (local-set-key "\C-c\C-c" 'compile))

(add-hook 'c++-mode-hook 'bind-compile-key)
(add-hook 'c-mode-hook 'bind-compile-key)
(add-hook 'c++-mode-hook 'bind-magit-status-key)
(add-hook 'LaTeX-mode-hook 'bind-magit-status-key)


(add-hook 'c-mode-hook '(lambda ()
        (setq ac-sources (append '(ac-source-semantic) ac-sources))
        (local-set-key (kbd "RET") 'newline-and-indent)
        (linum-mode t)
        (semantic-mode t)))

;; python
(add-hook 'python-mode-hook 'jedi:setup)

(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))

(setq auto-mode-alist
      (cons '("\\.h$" . c++-mode) auto-mode-alist))

;; Autocomplete


(require 'auto-complete-config)
(setq ac-comphist-file (expand-file-name
				    "~/.emacs.d/ac-comphist.dat"))
(ac-config-default)

      

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-layout-window-sizes (quote (("left8" (ecb-directories-buffer-name 0.19574468085106383 . 0.296875) (ecb-sources-buffer-name 0.19574468085106383 . 0.234375) (ecb-methods-buffer-name 0.19574468085106383 . 0.28125) (ecb-history-buffer-name 0.19574468085106383 . 0.171875)))))
 '(ecb-options-version "2.40")
 '(global-semantic-decoration-mode t)
 '(inhibit-startup-echo-area-message "dearn")
 '(semantic-complete-inline-analyzer-displayor-class (quote semantic-displayor-tooltip)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
