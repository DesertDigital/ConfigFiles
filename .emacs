;______                         _____                           ______ _ _      
;| ___ \                       |  ___|                          |  ___(_) |     
;| |_/ /_   _  __ _ _ __  ___  | |__  _ __ ___   __ _  ___ ___  | |_   _| | ___ 
;|    /| | | |/ _` | '_ \/ __| |  __|| '_ ` _ \ / _` |/ __/ __| |  _| | | |/ _ \
;| |\ \| |_| | (_| | | | \__ \ | |___| | | | | | (_| | (__\__ \ | |   | | |  __/
;\_| \_|\__, |\__,_|_| |_|___/ \____/|_| |_| |_|\__,_|\___|___/ \_|   |_|_|\___|
;        __/ |                                                                  
;       |___/ 

(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (wombat)))
 '(global-linum-mode t)
 '(package-selected-packages (quote (auctex rust-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;Disable Backups
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

; LaTeX (auctex package)
; C-c C-e Autocomplete Environments
; C-c C-m Autocomplete Macros
