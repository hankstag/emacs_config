(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode t)
(setq inhibit-splash-screen t)
(setq-default cursor-type 'bar)
(setq make-backup-files nil)
(global-company-mode t)
(global-hl-line-mode t)
(set-frame-font "consolas 12" nil t)
(fset 'yes-or-no-p 'y-or-n-p)
(setq ring-bell-function 'ignore)
(electric-indent-mode -1)
(require 'smooth-scrolling)
(smooth-scrolling-mode)

;;use swipe for search
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)

;; set up PATH variable
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; counsel projectile mode
(counsel-projectile-mode 1)

;; ivy rtags
(require 'rtags)
(setq rtags-autostart-diagnostics t)
(rtags-enable-standard-keybindings)
(setq rtags-display-result-backend 'ivy)
(define-key c-mode-base-map (kbd "M-.") (function rtags-find-symbol-at-point))
(define-key c-mode-base-map (kbd "M-,") (function rtags-find-references-at-point))
(define-key c-mode-base-map (kbd "M-;") (function rtags-find-file))
(define-key c-mode-base-map (kbd "C-.") (function rtags-find-symbol))
(define-key c-mode-base-map (kbd "C-,") (function rtags-find-references))


(require 'smartparens-config)
(smartparens-global-mode t)

;; load theme
(load-theme 'dracula t)



;; others
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("ff7625ad8aa2615eae96d6b4469fcc7d3d20b2e1ebc63b761a349bebbb9d23cb" default)))
 '(package-selected-packages
   (quote
    (exec-path-from-shell ivy-rtags counsel-projectile smartparens counsel swiper dracula-theme company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
