(fringe-mode '(8 . 0))

(add-hook 'prog-mode-hook 'linum-mode)
(require 'linum-relative)

(defun fix-linum-size ()
  (interactive)
  (set-face-attribute 'linum nil :height 110))

(add-hook 'linum-mode-hook 'fix-linum-size)

;; (custom-set-variables
;;  custom-set-variables was added by Custom.
;;  If you edit it by hand, you could mess it up, so be careful.
;;  Your init file should contain only one such instance.
;;  If there is more than one, they won't work right.
;;  '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
;;  '(custom-safe-themes
;;    (quote
;;     ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
;;  '(org-export-backends (quote (ascii html icalendar latex odt)))
;;  '(orgstruct-heading-prefix-regexp "^;;; +"))

;; Split windows vertically by default
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(split-height-threshold nil)
;;  '(split-width-threshold 0))


;; Insert newlines if the point is at the end of the buffer
(setq next-line-add-newlines t)

;;Wind-move
(global-set-key (kbd "C-c C-j") 'windmove-left)
(global-set-key (kbd "C-c C-k") 'windmove-down)
(global-set-key (kbd "C-c C-l") 'windmove-up)
(global-set-key (kbd "C-c C-;") 'windmove-right)

;; Remove scrollbars, menu bars, and toolbars
; when is a special form of "if", with no else clause, it reads:
; (when <condition> <code-to-execute-1> <code-to-execute2> ...)
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(setq initial-scratch-message "") ;; Uh, I know what Scratch is for
(setq visible-bell t)             ;; Get rid of the beeps

;;; To Enable In All Buffers
(autopair-global-mode)

;;; Remove trailing whitespaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;; System copy to work with Emacs copy
(setq x-select-enable-clipboard t)

;;; Clipboard Copy/Pasting
(setq x-select-enable-clipboard t)

;;; Run Emacs Server
(server-start)

;; ;;; Enable Mouse Mode for Terminal
;; (require 'mouse)
;; (xterm-mouse-mode t)

;;; Enable Mouse Support
(unless window-system
  (require 'mouse)
  (xterm-mouse-mode t)
  (global-set-key [mouse-4] '(lambda ()
                               (interactive)
                               (scroll-down 1)))
  (global-set-key [mouse-5] '(lambda ()
                               (interactive)
                               (scroll-up 1)))
  (defun track-mouse (e))
  (setq mouse-sel-mode t)
 )

;;; Make The Y Or N Suffice For A Yes Or No Question
(fset 'yes-or-no-p 'y-or-n-p)


;;; Bind RET to py-newline-and-indent
(add-hook 'c-mode-common-hook '(lambda ()
                                 (local-set-key (kbd "RET")
                                                'newline-and-indent)))
(add-hook 'python-mode-hook '(lambda ()
                               (local-set-key (kbd "RET")
                                              'newline-and-indent)))

;;; Set Spaces in place of Tabs
(setq-default indent-tabs-mode nil)
(setq tab-width 4)

;;; Set Line-by-Line Scrolling
(setq scroll-step 1)

;;; Display Time
;(display-time)

;;; Place Backup Files in Specific Directory
;;; Backup Files.
(setq make-backup-files t)

;;; Enable versioning with default values
(setq version-control t)

;;; Save all backup file in this directory.
(setq backup-directory-alist (quote ((".*" . "~/.emacs.d/.emacs_backups/"))))

;;; Set the fill column
(setq-default fill-column 80)

;;; Enable Auto Fill Mode
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'org-mode-hook 'turn-on-auto-fill)

;;; Delete Selection Mode - Awesome!
(delete-selection-mode 1)

;;; Auto-switch to split-window buffer
(global-set-key (kbd "C-x 3") 'split-window-horizontally-other) ; open new window horizontally and switch to it
(defun split-window-horizontally-other ()
        (interactive)
        (split-window-horizontally)
        (other-window 1)
)

(global-set-key (kbd "C-x 2") 'split-window-vertically-other) ; open new window vertically and switch to it
(defun split-window-vertically-other ()
 (interactive)
 (split-window-vertically)
 (other-window 1)
)

;;; Auto-refresh buffer
(global-auto-revert-mode t)


;;; Skip the Startup Message
(setq inhibit-startup-message t)

;; Change Cursor Style
;(setq-default cursor-type 'bar)
(blink-cursor-mode 0)
; highlight the region whenever it is active
(transient-mark-mode t)
; highlight region by regexp
(global-hi-lock-mode t)
;; Use Colors To Highlight Commands, Etc.
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)

;; Add Space Next to Line Numbers
;; (unless window-system
;;   (setq linum-format "%d "))

;; Enable Column Numbers
(setq column-number-mode t)

;;; Highlight Current Line
(global-hl-line-mode +1)

;;; Use Shift To Move Around Windows
;(windmove-default-keybindings 'shift)

;;; Highlight parentheses when the cursor is next to them
(require 'paren)
(show-paren-mode t)

;;; color-themes
;; Almost-monokai theme - Download from https://github.com/lut4rp/almost-monokai
;(load-file "~/.emacs.d/themes/color-theme-almost-monokai.el")
;(color-theme-almost-monokai)

;; color-theme-sanityinc-tomorrow
;;https://github.com/purcell/color-theme-sanityinc-tomorrow
(require 'color-theme-sanityinc-tomorrow)
(load-theme 'sanityinc-tomorrow-night t)

;; Org-mode source code blocks
(defun org-src-color-blocks-light ()
  "Colors the block headers and footers to make them stand out more for lighter themes"
  (interactive)
  (custom-set-faces
   '(org-block-begin-line
    ((t (:underline "#A7A6AA" :foreground "#008ED1" :background "#EAEAFF"))))
   '(org-block-background
     ((t (:background "#FFFFEA"))))
   '(org-block-end-line
     ((t (:overline "#A7A6AA" :foreground "#008ED1" :background "#EAEAFF"))))

   '(mode-line-buffer-id ((t (:foreground "#005000" :bold t))))
   '(which-func ((t (:foreground "#008000")))))

   ;; Looks like the minibuffer issues are only for v23
   ; (set-face-foreground 'minibuffer "black")
   ; (set-face-foreground 'minibuffer-prompt "red")
)

(defun org-src-color-blocks-dark ()
  "Colors the block headers and footers to make them stand out more for dark themes"
  (interactive)
  (custom-set-faces
   '(org-block-begin-line
     ((t (:foreground "#008ED1" :background "#002E41"))))
   '(org-block-background
     ((t (:background "#111111"))))
   '(org-block-end-line
     ((t (:foreground "#008ED1" :background "#002E41"))))

   '(mode-line-buffer-id ((t (:foreground "black" :bold t))))
   '(which-func ((t (:foreground "green")))))

   ;; Looks like the minibuffer issues are only for v23
   ; (set-face-foreground 'minibuffer "white")
   ; (set-face-foreground 'minibuffer-prompt "white")
)

(add-hook 'org-mode-hook 'org-src-color-blocks-dark)


;;; ** Fonts
;; Font size

;; Specify the default font as =Source Code Pro=, which should already
;;    be [[http://blogs.adobe.com/typblography/2012/09/source-code-pro.html][downloaded]] and installed.

;; =Source Code Pro= is also available in Google Fonts according to this
;; discussion: http://askubuntu.com/questions/193072/how-to-use-the-new-adobe-source-code-pro-font


(when (window-system)
  (set-frame-font "Source Code Pro")
  (set-face-attribute 'default nil :font "Source Code Pro" :height 140)
  (set-face-font 'default "Source Code Pro"))

(global-set-key (kbd "C-x C-+") 'text-scale-increase)
(global-set-key (kbd "C-x C--") 'text-scale-decrease)

(defun inverse-filter (condp lst)
  "A filter function, but returns a list of the entries that
don't match the predicate."
  (delq nil
        (mapcar (lambda (x) (and (not (funcall condp x)) x)) lst)))

(require 'cl)

;;; melpa, marmalade
(require 'package)
(setq package-archives '(("org"       . "http://orgmode.org/elpa/")
                         ("gnu"       . "http://elpa.gnu.org/packages/")
                         ("melpa"     . "http://melpa.milkbox.net/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))

(package-initialize)
(package-refresh-contents)

(defun packages-install (packages)
  "Given a list of packages, this will install them from the standard locations."
  (let ((to-install (inverse-filter 'package-installed-p packages)))
    (when to-install
      (package-refresh-contents)
      (dolist (it to-install)
          (package-install it)
      (delete-other-windows)))))




(defvar default-packages
      '(
        flymake-easy
        smooth-scroll
        color-identifiers-mode
        ace-jump-mode
        expand-region
        web-mode
        magit
        color-theme
        yasnippet
        ;monokai-theme
        jedi
        auto-complete
        autopair
        multiple-cursors
        smex
        ido-ubiquitous
        ido-vertical-mode
        rainbow-delimiters
        visual-regexp
        powerline
        org-bullets
        color-theme-sanityinc-tomorrow
        linum-relative
        projectile
        ) "A list of packages to ensure are installed at launch.")

(packages-install default-packages)
(mapc 'require default-packages)

(setq-default ispell-program-name "aspell")
(setq flyspell-issue-welcome-flag nil)

(eval-after-load "org"
  '(require 'ox-md nil t))

;;; Orgstruct minor mode
;(add-hook 'emacs-lisp-mode-hook 'turn-on-orgstruct)
(add-hook 'emacs-lisp-mode-hook 'turn-on-orgstruct++)
;(add-hook 'emacs-lisp-mode-hook 'turn-on-orgtbl)

;;; Org-mode (Easier on the eyes)
;;(setq org-startup-indented t)
(setq org-hide-leading-stars t)
(setq org-columns-content t)
(setq org-align-all-tags t)

;;; mobileorg setup
(setq org-directory "~/Dev/org")
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
(setq org-agenda-files (quote ("~/Dev/org/agenda.org")))
(setq org-mobile-inbox-for-pull "~/Dev/org/mobileorg-inbox.org")
;; Enable encryption
(setq org-mobile-use-encryption t)
;; Set a password
(setq org-mobile-encryption-password "shafayet")

(setq org-src-fontify-natively t)

(add-hook 'org-mode-hook (lambda()
                           (set (make-local-variable 'electric-indent-functions)
                                (list (lambda(arg) 'no-indent)))))

(projectile-global-mode)

(add-hook 'after-init-hook 'global-color-identifiers-mode)

(add-to-list 'yas/root-directory "~/.emacs.d/plugins/yasnippet-snippets")
(yas-global-mode 1)

(require 'ace-jump-mode)
;; ace jump mode major function
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
;; Key Binding
;; Ace-jump
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; Enable a more powerful jump back function from ace jump mode
(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
  t)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(ido-mode 1)
(ido-vertical-mode 1)
;; Use up and down to navigate the options
(setq ido-vertical-define-keys 'C-n-C-p-up-down)
;; Use left and right to move through history/directories
(setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)

;;; ** Magit
;; Magit Keybindings
(require 'magit)
(define-key global-map (kbd "C-c g s") 'magit-status)
(define-key global-map (kbd "C-c g p") 'magit-pull)
(define-key global-map (kbd "C-c g b") 'magit-blame-mode)
(define-key global-map (kbd "C-c g l") 'magit-log)
(setq magit-emacsclient-executable "/usr/local/Cellar/emacs/HEAD/bin/emacsclient")

;; Auto-complete Mode Extra Settings
(setq
 ac-auto-start 2
 ac-override-local-map nil
 ac-use-menu-map t
 ac-candidate-limit 20)

(global-auto-complete-mode t)

;;; Jedi Settings
(require 'jedi)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)                      ; optional
(setq jedi:complete-on-dot t)

(require 'flymake-python-pyflakes)
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)
(global-set-key [f10] 'flymake-goto-prev-error)
(global-set-key [f11] 'flymake-goto-next-error)

;; Flyspell for Org-mode
(add-hook 'org-mode-hook 'flyspell-mode)

;; Flyspell appearance
(add-hook 'flyspell-mode-hook '(lambda ()
                                 (set-face-attribute 'flyspell-duplicate nil
                                                     :foreground nil
                                                     :underline "dark orange"
                                                     :bold nil)
                                 (set-face-attribute 'flyspell-incorrect nil
                                                     :foreground nil
                                                     :underline "red"
                                                         :bold nil)))

;;; ** expand-region
;; expand-region key binding
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; Rainbow mode
;;(require 'rainbow-delimiters)
;;(rainbow-delimiters-mode t)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
;;(global-rainbow-delimiters-mode)
;; Rainbow mode color setup example - Customize during free time
;; (defun rainbow-delimiters-colors ()
;;   (set-face-foreground 'rainbow-delimiters-depth-1-face "dark red")
;;   (set-face-foreground 'rainbow-delimiters-depth-2-face "dark green")
;;   (set-face-foreground 'rainbow-delimiters-depth-3-face "deep pink")
;;   (set-face-foreground 'rainbow-delimiters-depth-4-face "yellow")
;;   (set-face-foreground 'rainbow-delimiters-depth-5-face "green")
;;   (set-face-foreground 'rainbow-delimiters-depth-6-face "light blue")
;;   (set-face-foreground 'rainbow-delimiters-depth-7-face "orange")
;;   (set-face-foreground 'rainbow-delimiters-depth-8-face "slate blue")
;;   (set-face-foreground 'rainbow-delimiters-depth-9-face "light gray")
;;   (set-face-foreground 'rainbow-delimiters-unmatched-face "white"))
;; (add-hook 'rainbow-delimiters-mode-hook 'rainbow-delimiters-colors)

(require 'visual-regexp)
(define-key global-map (kbd "C-c r") 'vr/replace)
(define-key global-map (kbd "C-c q") 'vr/query-replace)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(require 'powerline)
(powerline-default-theme)

;; ;; https://github.com/howardabrams/dot-files/blob/master/emacs-mode-line.org

;; Which function mode
(setq which-func-unknown "")
(which-function-mode 1)

(setq which-func-format
      `(" "
        (:propertize which-func-current local-map
                     (keymap
                      (mode-line keymap
                                 (mouse-3 . end-of-defun)
                                 (mouse-2 . narrow-to-defun)
                                 (mouse-1 . beginning-of-defun)))
                     face which-func
                     mouse-face mode-line-highlight
                     help-echo "mouse-1: go to beginning\n\
mouse-2: toggle rest visibility\n\
mouse-3: go to end")
        " "))

(custom-set-faces
 '(mode-line-buffer-id ((t (:foreground "#008000" :bold t))))
 '(which-func ((t (:foreground "#008000"))))
 '(mode-line ((t (:foreground "#008000" :background "#dddddd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#008000" :background "#bbbbbb" :box
 nil)))))

(defun powerline-simpler-vc-mode (s)
  (if s
      (replace-regexp-in-string "Git:" "" s)
    s))

(defun powerline-simpler-minor-display (s)
  (replace-regexp-in-string
   (concat " "
           (mapconcat 'identity '("Undo-Tree" "GitGutter" "Projectile"
                                  "Abbrev" "ColorIds" "MRev" "ElDoc" "Paredit"
                                  "+1" "+2" "FlyC" "Fly" ;; ":1/0"
                                  "Fill" "AC" "FIC") "\\|")) "" s))

(defun powerline-ha-theme ()
  "A powerline theme that removes many minor-modes that don't serve much purpose on the mode-line."
  (interactive)
  (setq-default mode-line-format
                '("%e"
                  (:eval
                   (let*
                       ((active
                         (powerline-selected-window-active))
                        (mode-line
                         (if active 'mode-line 'mode-line-inactive))
                        (face1
                         (if active 'powerline-active1 'powerline-inactive1))
                        (face2
                         (if active 'powerline-active2 'powerline-inactive2))
                        (separator-left
                         (intern
                          (format "powerline-%s-%s" powerline-default-separator
                                  (car powerline-default-separator-dir))))
                        (separator-right
                         (intern
                          (format "powerline-%s-%s" powerline-default-separator
                                  (cdr powerline-default-separator-dir))))
                        (lhs
                         (list
                          (powerline-raw "%*" nil 'l)
                          ;; (powerline-buffer-size nil 'l)
                          (powerline-buffer-id nil 'l)
                          (powerline-raw " ")
                          (funcall separator-left mode-line face1)
                          (powerline-narrow face1 'l)
                          (powerline-simpler-vc-mode (powerline-vc face1))))
                        (rhs
                         (list
                          (powerline-raw mode-line-misc-info face1 'r)
                          (powerline-raw global-mode-string face1 'r)
                          (powerline-raw "%4l" face1 'r)
                          (powerline-raw ":" face1)
                          (powerline-raw "%3c" face1 'r)
                          (funcall separator-right face1 mode-line)
                          (powerline-raw " ")
                          (powerline-raw "%6p" nil 'r)
                          (powerline-hud face2 face1)))
                        (center
                         (list
                          (powerline-raw " " face1)
                          (funcall separator-left face1 face2)
                          (when
                              (boundp 'erc-modified-channels-object)
                            (powerline-raw erc-modified-channels-object face2 'l))
                          (powerline-major-mode face2 'l)
                          (powerline-process face2)
                          (powerline-raw " :" face2)

                          (powerline-simpler-minor-display (powerline-minor-modes face2 'l))

                          (powerline-raw " " face2)
                          (funcall separator-right face2 face1))))
                     (concat
                      (powerline-render lhs)
                      (powerline-fill-center face1
                                             (/
                                              (powerline-width center)
                                              2.0))
                      (powerline-render center)
                      (powerline-fill face1
                                      (powerline-width rhs))
                      (powerline-render rhs)))))))

(powerline-ha-theme)

(packages-install
               '(python-mode
                 virtualenvwrapper
                 flymake-python-pyflakes))

;; Python Mode Settings
(require 'python-mode)
(add-to-list 'auto-mode-alist '("\\.py$" . python-mode))
(setq py-electric-colon-active t)
(add-hook 'python-mode-hook 'autopair-mode)
(add-hook 'python-mode-hook 'yas-minor-mode)

(packages-install '( js-comint
                     js2-mode
                     ac-js2
                     js2-refactor
                     json-mode
                     coffee-mode ))

(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(setq js-basic-indent 2)
(setq-default js2-basic-indent 2)

(setq-default js2-basic-offset 2)
(setq-default js2-auto-indent-p t)
(setq-default js2-cleanup-whitespace t)
(setq-default js2-enter-indents-newline t)
(setq-default js2-global-externs "jQuery $")
(setq-default js2-indent-on-enter-key t)
(setq-default js2-mode-indent-ignore-first-tab t)
(setq-default js2-global-externs '("module" "require" "buster" "sinon" "assert" "refute" "setTimeout" "clearTimeout" "setInterval" "clearInterval" "location" "__dirname" "console" "JSON"))
; We'll let fly do the error parsing...
(setq-default js2-show-parse-errors nil)
; (autoload 'js2-mode "js2-mode" nil t)

(font-lock-add-keywords
 'js2-mode `(("\\(function *\\)("
             (0 (progn (compose-region (match-beginning 1) (match-end 1) "ƒ")
                       nil)))))

(font-lock-add-keywords 'js2-mode
                        '(("\\<\\(FIX\\|TODO\\|FIXME\\|HACK\\|REFACTOR\\):"
                           1 font-lock-warning-face t)))

(add-hook 'js2-mode-hook 'color-identifiers-mode)

(when (require 'js2-refactor nil t)
      (js2r-add-keybindings-with-prefix "C-c C-m"))

(autoload 'js-comint "js-comint"
  "Hooking JavaScript interpreter up to the JS Files." t nil)

(setenv "NODE_NO_READLINE" "1")   ;; Turn off fancy node prompt
;; Use node as our repl
(setq inferior-js-program-command "node")

(setq inferior-js-mode-hook
      (lambda ()
        ;; We like nice colors
        (ansi-color-for-comint-mode-on)
        ;; Deal with some prompt nonsense
        (add-to-list
         'comint-preoutput-filter-functions
         (lambda (output)
           (replace-regexp-in-string "\033\\[[0-9]+[GK]" "" output)
           (replace-regexp-in-string ".*1G.*3G" "&GT;" output)
           (replace-regexp-in-string "&GT;" "> " output)))))

(defun my/js-keybindings ()
  (interactive)
  (local-set-key (kbd "C-c C-c") 'js-send-buffer)
  (local-set-key (kbd "C-c C-r") 'js-send-region)
  (local-set-key (kbd "C-c C-s") 'js-send-last-sexp)
  (local-set-key (kbd "C-c C-z") 'run-js))

(add-hook 'js-mode-hook 'my/js-keybindings)
(add-hook 'js2-mode-hook 'my/js-keybindings)

(add-hook 'after-init-hook
  #'(lambda ()
    (when (locate-library "slime-js")
      (require 'setup-slime-js))))

(when (require 'coffee-mode nil t)
  (let ((my-coffee-command (concat (getenv "HOME") "/bin/coughy")))
    (if (file-exists-p my-coffee-command)
        (setq coffee-command my-coffee-command))))

;; Web-Mode Settings
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(defun web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-enable-current-element-highlight t)
)
(add-hook 'web-mode-hook  'web-mode-hook)

(defun my-c-mode-common-hook ()
  (setq c-basic-offset 4)
  (c-set-offset 'substatement-open 0))
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(defadvice kill-ring-save (before slick-copy activate compile) "When called
  interactively with no active region, copy a single line instead."
  (interactive (if mark-active (list (region-beginning) (region-end)) (message
  "Copied line") (list (line-beginning-position) (line-beginning-position
  2)))))

(defadvice kill-region (before slick-cut activate compile)
  "When called interactively with no active region, kill a single line instead."
  (interactive
    (if mark-active (list (region-beginning) (region-end))
      (list (line-beginning-position)
        (line-beginning-position 2)))))

(defun linum-off-mode ()
  "Toggles the line numbers as well as the fringe. This allows me
to maximize the screen estate."
  (interactive)
  (if linum-mode
      (progn
         (fringe-mode '(0 . 0))
        (linum-mode -1))
    (fringe-mode '(8 . 0))
    (linum-mode 1)))

(defun unfill-paragraph ()
  (interactive)
  (let ((fill-column (point-max)))
    (fill-paragraph nil)))

(defun unfill-region ()
  (interactive)
  (let ((fill-column (point-max)))
    (fill-region (region-beginning) (region-end) nil)))

;;; ** Custom Functions
;;; *** Smarter move to beginning of line
;; Collected from: http://emacsredux.com/blog/2013/05/22/smarter-navigation-to-the-beginning-of-a-line/
(defun smarter-move-beginning-of-line (arg)
    "Move point back to indentation of beginning of line.

Move point to the first non-whitespace character on this line.
If point is already there, move to the beginning of the line.
Effectively toggle between the first non-whitespace character and
the beginning of the line.

If ARG is not nil or 1, move forward ARG - 1 lines first.  If
point reaches the beginning or end of the buffer, stop there."
    (interactive "^p")
    (setq arg (or arg 1))

    ;; Move lines first
    (when (/= arg 1)
      (let ((line-move-visual nil))
        (forward-line (1- arg))))

    (let ((orig-point (point)))
      (back-to-indentation)
      (when (= orig-point (point))
        (move-beginning-of-line 1))))

;; remap C-a to `smarter-move-beginning-of-line'
(global-set-key [remap move-beginning-of-line]
                'smarter-move-beginning-of-line)


;;; Inserts file name at point using C-c f
;; Collected from: https://github.com/TikhonJelvis/dotfiles/blob/master/.emacs
(defun file-name-at-point (add-to-kill-ring)
    "Prompts the user for a file path using the standard C-x C-f
interface and inserts it at point."
    (interactive "P")
    (let ((action (if add-to-kill-ring 'kill-new 'insert))
          (path (if ido-mode
                    (ido-read-file-name "file path: ")
                  (read-file-name "file path: "))))
      (apply action (list path))))
(global-set-key (kbd "C-c f") 'file-name-at-point)

;;; Autocreate directory when finding file
(defadvice find-file (before make-directory-maybe (filename &optional wildcards) activate)
  "Create parent directory if not exists while visiting file."
  (unless (file-exists-p filename)
    (let ((dir (file-name-directory filename)))
      (unless (file-exists-p dir)
        (make-directory dir)))))

;;; *** Smarter paragraph movement
;; http://ergoemacs.org/emacs/emacs_move_by_paragraph.html

(defun ergoemacs-forward-block ()
  "Move cursor forward to the beginning of next text block.
A text block is separated by 2 empty lines (or line with just whitespace).
In most major modes, this is similar to `forward-paragraph', but this command's behavior is the same regardless of syntax table."
  (interactive)
  (if (search-forward-regexp "\n[[:blank:]\n]*\n+" nil "NOERROR")
      (progn (backward-char))
    (progn (goto-char (point-max)))))

(defun ergoemacs-backward-block ()
  "Move cursor backward to previous text block.
See: `ergoemacs-forward-block'"
  (interactive)
  (if (search-backward-regexp "\n[\t\n ]*\n+" nil "NOERROR")
      (progn
        (skip-chars-backward "\n\t ")
        (forward-char 1))
    (progn (goto-char (point-min)))))

;; map M-p to `ergoemacs-forward-block'
(global-set-key (kbd "M-n") 'ergoemacs-forward-block)

;; map M-n to `ergoemacs-backward-block'
(global-set-key (kbd "M-p") 'ergoemacs-backward-block)

;; Win32 Setup
(when (eq window-system 'w32)
  (setq default-directory "C:/Users/shafi/home")
  (set-face-attribute 'default nil :height 130)
  (setq-default ispell-program-name "C:/cygwin/bin/aspell.exe")
  (setq org-export-odt-preferred-output-format "doc")
  ; Set indentation level to 4 spaces (instead of 2)
  (setq c-basic-offset 4)
  ; Set the extra indentation before a substatement (e.g. the opening brace in
  ; the consequent block of an if statement) to 0 (instead of '+)
  (c-set-offset 'substatement-open 0)
  ;; csharp-mode's own csharp-insert-open-brace.
  (add-hook 'csharp-mode-hook
            (lambda ()
              (local-set-key (kbd "{") 'c-electric-brace)))

  ;; c-mode workaround
  (add-hook 'c-mode-hook
            (lambda ()
              (local-set-key (kbd "{") 'c-electric-brace)))
  (message "Emacs on Windows"))
