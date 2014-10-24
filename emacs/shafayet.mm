<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node text="shafayet.orgsymlink" background_color="#00bfff">
<richcontent TYPE="NOTE"><html><head></head><body><p>--org-mode: WHOLE FILE</p></body></html></richcontent>
<node text="Special Thanks" position="left">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>This config file borrows ideas from these awesome people:<br />- <a href="http://emacsrocks.com/">Magnar Sveen</a><br />- <a href="http://www.howardism.org/">Howard Abrams</a><br />- <a href="http://sachachua.com/">Sacha Chua</a><br />- <a href="https://github.com/holman/dotfiles">Zach Holman</a><br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Introduction" folded="true" position="left">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>This is my =.emacs= file, written using org-mode. I've realized that it's<br />better to go the literate programming way, especially for my .emacs configuration -<br />it can get messy. If you are in search of an out-of-box solution to setup<br />emacs configuration and other dot files, you might be interested in this<br />repository.<br /></p></body>
</html>
</richcontent>
</node>
<node text="dotfiles">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>Here I will briefly describe how the scripts work</p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="Load-patch" position="left">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+begin_src elisp<br />;; Load .emacs.d<br />(setq load-path (cons &quot;~/.emacs.d/lisp&quot; load-path))<br />;; Load other custom init-files<br />;(load &quot;~/.emacs.d/my-custom-init-file.el&quot;)<br />; or<br />; load-path<br />; (add-to-list 'load-path &quot;~/.emacs.d/&quot;)<br />; exec-path<br />; (add-to-list 'exec-path &quot;~/bin/&quot;)</p><p>;; Load init-files after placing them in ~/.emacs.d directory<br />; (add-hook 'after-init-hook '(lambda ()<br />;                               (load &quot;~/.emacs.d/my-custom-init-file.el&quot;)<br />;                               (load &quot;~/.emacs.d/my-other-custom-init-file.el&quot;)<br />;                               ))</p><p>#+end_src<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Package" position="left">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>Setup ELPA package sources<br />#+begin_src emacs-lisp :tangle yes<br />(require 'cl)</p><p>;;; melpa, marmalade<br />(require 'package)<br />(setq package-archives '((&quot;org&quot;       . &quot;<a href="http://orgmode.org/elpa/&quot">http://orgmode.org/elpa/&quot</a>;)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(&quot;gnu&quot;       . &quot;<a href="http://elpa.gnu.org/packages/&quot">http://elpa.gnu.org/packages/&quot</a>;)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(&quot;melpa&quot;     . &quot;<a href="http://melpa.milkbox.net/packages/&quot">http://melpa.milkbox.net/packages/&quot</a>;)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(&quot;marmalade&quot; . &quot;<a href="http://marmalade-repo.org/packages/&quot">http://marmalade-repo.org/packages/&quot</a>;)))</p><p>(package-initialize)</p><p>;; <a href="http://stackoverflow.com/questions/10092322/how-to-automatically-install-emacs-packages-by-specifying-a-list-of-package-name">http://stackoverflow.com/questions/10092322/how-to-automatically-install-emacs-packages-by-specifying-a-list-of-package-name</a></p><p>(defvar shafayet-packages<br />&#160;&#160;&#160;&#160;'(<br />&#160;&#160;&#160;&#160;&#160;&#160;python-mode<br />&#160;&#160;&#160;&#160;&#160;&#160;virtualenvwrapper<br />&#160;&#160;&#160;&#160;&#160;&#160;flymake-easy<br />&#160;&#160;&#160;&#160;&#160;&#160;flymake-python-pyflakes<br />&#160;&#160;&#160;&#160;&#160;&#160;smooth-scroll<br />&#160;&#160;&#160;&#160;&#160;&#160;js2-mode<br />&#160;&#160;&#160;&#160;&#160;&#160;exec-path-from-shell<br />&#160;&#160;&#160;&#160;&#160;&#160;ace-jump-mode<br />&#160;&#160;&#160;&#160;&#160;&#160;expand-region<br />&#160;&#160;&#160;&#160;&#160;&#160;web-mode<br />&#160;&#160;&#160;&#160;&#160;&#160;magit<br />&#160;&#160;&#160;&#160;&#160;&#160;color-theme<br />&#160;&#160;&#160;&#160;&#160;&#160;yasnippet<br />&#160;&#160;&#160;&#160;&#160;&#160;;monokai-theme<br />&#160;&#160;&#160;&#160;&#160;&#160;jedi<br />&#160;&#160;&#160;&#160;&#160;&#160;auto-complete<br />&#160;&#160;&#160;&#160;&#160;&#160;autopair<br />&#160;&#160;&#160;&#160;&#160;&#160;multiple-cursors<br />&#160;&#160;&#160;&#160;&#160;&#160;smex<br />&#160;&#160;&#160;&#160;&#160;&#160;ido-ubiquitous<br />&#160;&#160;&#160;&#160;&#160;&#160;ido-vertical-mode<br />&#160;&#160;&#160;&#160;&#160;&#160;rainbow-delimiters<br />&#160;&#160;&#160;&#160;&#160;&#160;visual-regexp<br />&#160;&#160;&#160;&#160;&#160;&#160;powerline<br />&#160;&#160;&#160;&#160;&#160;&#160;org-bullets<br />&#160;&#160;&#160;&#160;&#160;&#160;color-theme-sanityinc-tomorrow<br />&#160;&#160;&#160;&#160;&#160;&#160;) &quot;A list of packages to ensure are installed at launch.&quot;)</p><p><br />(setq url-http-attempt-keepalives nil)</p><p>(defun packages-installed-p ()<br />(loop for p in shafayet-packages<br />&#160;&#160;&#160;&#160;&#160;&#160;when (not (package-installed-p p)) do (return nil)<br />&#160;&#160;&#160;&#160;&#160;&#160;finally (return t)))</p><p>(unless (packages-installed-p)<br />;; check for new packages (package versions)<br />(message &quot;%s&quot; &quot;Emacs is now refreshing its package database...&quot;)<br />(package-refresh-contents)<br />(message &quot;%s&quot; &quot; done.&quot;)<br />;; install the missing packages<br />(dolist (p shafayet-packages)<br />&#160;&#160;(when (not (package-installed-p p))<br />&#160;&#160;&#160;&#160;(package-install p))))</p><p>(mapc 'require shafayet-packages)</p><p>#+end_src<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Preferences" position="left">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p><br />#+begin_src emacs-lisp :tangle yes<br />(custom-set-variables<br />&#160;;; custom-set-variables was added by Custom.<br />&#160;;; If you edit it by hand, you could mess it up, so be careful.<br />&#160;;; Your init file should contain only one such instance.<br />&#160;;; If there is more than one, they won't work right.<br />&#160;'(custom-enabled-themes (quote (sanityinc-tomorrow-night)))<br />&#160;'(custom-safe-themes<br />&#160;&#160;&#160;(quote<br />&#160;&#160;&#160;&#160;(&quot;06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a&quot; &quot;4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328&quot; &quot;8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4&quot; default)))<br />&#160;'(org-export-backends (quote (ascii html icalendar latex odt)))<br />&#160;'(orgstruct-heading-prefix-regexp &quot;^;;; +&quot;))</p><p>;;Split windows vertically by default<br />;; (custom-set-variables<br />;;  ;; custom-set-variables was added by Custom.<br />;;  ;; If you edit it by hand, you could mess it up, so be careful.<br />;;  ;; Your init file should contain only one such instance.<br />;;  ;; If there is more than one, they won't work right.<br />;;  '(split-height-threshold nil)<br />;;  '(split-width-threshold 0))</p><p><br />;; Insert newlines if the point is at the end of the buffer<br />(setq next-line-add-newlines t)</p><p>;;Wind-move<br />(global-set-key (kbd &quot;C-c C-j&quot;) 'windmove-left)<br />(global-set-key (kbd &quot;C-c C-k&quot;) 'windmove-down)<br />(global-set-key (kbd &quot;C-c C-l&quot;) 'windmove-up)<br />(global-set-key (kbd &quot;C-c C-;&quot;) 'windmove-right)</p><p>;; Remove scrollbars, menu bars, and toolbars<br />; when is a special form of &quot;if&quot;, with no else clause, it reads:<br />; (when &lt;condition&gt; &lt;code-to-execute-1&gt; &lt;code-to-execute2&gt; ...)<br />(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))<br />(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))<br />(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))</p><p>(setq initial-scratch-message &quot;&quot;) ;; Uh, I know what Scratch is for<br />(setq visible-bell t)             ;; Get rid of the beeps</p><p><br />;;; To Enable In All Buffers<br />(autopair-global-mode)</p><p>;;; Remove trailing whitespaces<br />(add-hook 'before-save-hook 'delete-trailing-whitespace)</p><p>;;; System copy to work with Emacs copy<br />(setq x-select-enable-clipboard t)</p><p>;;; Clipboard Copy/Pasting<br />(setq x-select-enable-clipboard t)</p><p>;;; Run Emacs Server<br />(server-start)</p><p>;; ;;; Enable Mouse Mode for Terminal<br />;; (require 'mouse)<br />;; (xterm-mouse-mode t)</p><p>;;; Enable Mouse Support<br />(unless window-system<br />&#160;&#160;(require 'mouse)<br />&#160;&#160;(xterm-mouse-mode t)<br />&#160;&#160;(global-set-key [mouse-4] '(lambda ()<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(interactive)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(scroll-down 1)))<br />&#160;&#160;(global-set-key [mouse-5] '(lambda ()<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(interactive)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(scroll-up 1)))<br />&#160;&#160;(defun track-mouse (e))<br />&#160;&#160;(setq mouse-sel-mode t)<br />&#160;)</p><p>;;; Make The Y Or N Suffice For A Yes Or No Question<br />(fset 'yes-or-no-p 'y-or-n-p)</p><p><br />;;; Bind RET to py-newline-and-indent<br />(add-hook 'c-mode-common-hook '(lambda ()<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(local-set-key (kbd &quot;RET&quot;)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'newline-and-indent)))<br />(add-hook 'python-mode-hook '(lambda ()<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(local-set-key (kbd &quot;RET&quot;)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'newline-and-indent)))</p><p>;;; Set Spaces in place of Tabs<br />(setq-default indent-tabs-mode nil)<br />(setq tab-width 4)</p><p>;;; Set Line-by-Line Scrolling<br />(setq scroll-step 1)</p><p>;;; Display Time<br />;(display-time)</p><p>;;; Place Backup Files in Specific Directory<br />;;; Backup Files.<br />(setq make-backup-files t)</p><p>;;; Enable versioning with default values<br />(setq version-control t)</p><p>;;; Save all backup file in this directory.<br />(setq backup-directory-alist (quote ((&quot;.*&quot; . &quot;~/.emacs.d/.emacs_backups/&quot;))))</p><p>;;; Set the fill column<br />(setq-default fill-column 80)</p><p>;;; Enable Auto Fill Mode<br />(add-hook 'text-mode-hook 'turn-on-auto-fill)<br />(add-hook 'org-mode-hook 'turn-on-auto-fill)</p><p>;;; Delete Selection Mode - Awesome!<br />(delete-selection-mode 1)</p><p>;;; Auto-switch to split-window buffer<br />(global-set-key (kbd &quot;C-x 3&quot;) 'split-window-horizontally-other) ; open new window horizontally and switch to it<br />(defun split-window-horizontally-other ()<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(interactive)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(split-window-horizontally)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(other-window 1)<br />)</p><p>(global-set-key (kbd &quot;C-x 2&quot;) 'split-window-vertically-other) ; open new window vertically and switch to it<br />(defun split-window-vertically-other ()<br />&#160;(interactive)<br />&#160;(split-window-vertically)<br />&#160;(other-window 1)<br />)</p><p>;;; Auto-refresh buffer<br />(global-auto-revert-mode t)</p><p><br />;;; Skip the Startup Message<br />(setq inhibit-startup-message t)</p><p>#+end_src</p><p><br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Extensions" folded="true" position="left">
<node text="Yasnippet">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+begin_src emacs-lisp :tangle yes</p><p>(yas-global-mode 1)<br />;(yas-load-directory &quot;~/.emacs.d/snippets&quot;)<br />(add-hook 'term-mode-hook (lambda()<br />&#160;&#160;&#160;&#160;(setq yas-dont-activate t)))</p><p>;;; ** exec-path-from-shell<br />(when (memq window-system '(mac ns))<br />&#160;&#160;(exec-path-from-shell-initialize))</p><p>#+end_src<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Ace Jump">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+begin_src emacs-lisp :tangle yes<br />;; ace jump mode major function<br />(autoload<br />&#160;&#160;'ace-jump-mode<br />&#160;&#160;&quot;ace-jump-mode&quot;<br />&#160;&#160;&quot;Emacs quick move minor mode&quot;<br />&#160;&#160;t)<br />;; Key Binding<br />;; Ace-jump<br />(define-key global-map (kbd &quot;C-c SPC&quot;) 'ace-jump-mode)</p><p>;; Enable a more powerful jump back function from ace jump mode<br />(autoload<br />&#160;&#160;'ace-jump-mode-pop-mark<br />&#160;&#160;&quot;ace-jump-mode&quot;<br />&#160;&#160;&quot;Ace jump back:-)&quot;<br />&#160;&#160;t)<br />(eval-after-load &quot;ace-jump-mode&quot;<br />&#160;&#160;'(ace-jump-mode-enable-mark-sync))<br />(define-key global-map (kbd &quot;C-x SPC&quot;) 'ace-jump-mode-pop-mark)</p><p>#+end_src</p><p><br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Multiple Cursors">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+begin_src emacs-lisp :tangle yes<br />(global-set-key (kbd &quot;C-S-c C-S-c&quot;) 'mc/edit-lines)<br />(global-set-key (kbd &quot;C-&gt;&quot;) 'mc/mark-next-like-this)<br />(global-set-key (kbd &quot;C-&lt;&quot;) 'mc/mark-previous-like-this)<br />(global-set-key (kbd &quot;C-c C-&lt;&quot;) 'mc/mark-all-like-this)</p><p><br />#+end_src<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Smex bindings">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+begin_src emacs-lisp :tangle yes<br />(global-set-key (kbd &quot;M-x&quot;) 'smex)<br />(global-set-key (kbd &quot;M-X&quot;) 'smex-major-mode-commands)<br />;; This is your old M-x.<br />(global-set-key (kbd &quot;C-c C-c M-x&quot;) 'execute-extended-command)</p><p>#+end_src<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="ido-vertical-mode">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+begin_src emacs-lisp :tangle yes<br />(ido-mode 1)<br />(ido-vertical-mode 1)<br />;; Use up and down to navigate the options<br />(setq ido-vertical-define-keys 'C-n-C-p-up-down)<br />;; Use left and right to move through history/directories<br />(setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)</p><p>#+end_src</p><p></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Magit">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+begin_src emacs-lisp :tangle yes<br />;;; ** Magit<br />;; Magit Keybindings<br />(define-key global-map (kbd &quot;C-c g s&quot;) 'magit-status)<br />(define-key global-map (kbd &quot;C-c g p&quot;) 'magit-pull)<br />(define-key global-map (kbd &quot;C-c g b&quot;) 'magit-blame-mode)<br />(define-key global-map (kbd &quot;C-c g l&quot;) 'magit-log)<br />(setq magit-emacsclient-executable &quot;/usr/local/Cellar/emacs/HEAD/bin/emacsclient&quot;)</p><p>#+end_src<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Autocomplete">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+begin_src emacs-lisp :tangle yes<br />;; Auto-complete Mode Extra Settings<br />(setq<br />&#160;ac-auto-start 2<br />&#160;ac-override-local-map nil<br />&#160;ac-use-menu-map t<br />&#160;ac-candidate-limit 20)</p><p>(global-auto-complete-mode t)</p><p>#+end_src<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Jedi">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+begin_src emacs-lisp :tangle yes<br />;;; Jedi Settings<br />(require 'jedi)</p><p>(add-hook 'python-mode-hook 'jedi:setup)<br />(setq jedi:setup-keys t)                      ; optional<br />(setq jedi:complete-on-dot t)</p><p>#+end_src<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="flymake-python">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+begin_src emacs-lisp :tangle yes<br />(require 'flymake-python-pyflakes)<br />(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)<br />(global-set-key [f10] 'flymake-goto-prev-error)<br />(global-set-key [f11] 'flymake-goto-next-error)</p><p>#+end_src</p><p><br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Flyspell">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+begin_src emacs-lisp :tangle yes<br />;; Flyspell for Org-mode<br />(add-hook 'org-mode-hook 'flyspell-mode)</p><p>;; Flyspell appearance<br />(add-hook 'flyspell-mode-hook '(lambda ()<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(set-face-attribute 'flyspell-duplicate nil<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;:foreground nil<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;:underline &quot;dark orange&quot;<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;:bold nil)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(set-face-attribute 'flyspell-incorrect nil<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;:foreground nil<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;:underline &quot;red&quot;<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;:bold nil)))</p><p>;;; ** expand-region<br />;; expand-region key binding<br />(require 'expand-region)<br />(global-set-key (kbd &quot;C-=&quot;) 'er/expand-region)</p><p>#+end_src<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Rainbow-mode">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+begin_src emacs-lisp :tangle yes<br />;; Rainbow mode<br />;;(require 'rainbow-delimiters)<br />;;(rainbow-delimiters-mode t)<br />(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)<br />;;(global-rainbow-delimiters-mode)<br />;; Rainbow mode color setup example - Customize during free time<br />;; (defun rainbow-delimiters-colors ()<br />;;   (set-face-foreground 'rainbow-delimiters-depth-1-face &quot;dark red&quot;)<br />;;   (set-face-foreground 'rainbow-delimiters-depth-2-face &quot;dark green&quot;)<br />;;   (set-face-foreground 'rainbow-delimiters-depth-3-face &quot;deep pink&quot;)<br />;;   (set-face-foreground 'rainbow-delimiters-depth-4-face &quot;yellow&quot;)<br />;;   (set-face-foreground 'rainbow-delimiters-depth-5-face &quot;green&quot;)<br />;;   (set-face-foreground 'rainbow-delimiters-depth-6-face &quot;light blue&quot;)<br />;;   (set-face-foreground 'rainbow-delimiters-depth-7-face &quot;orange&quot;)<br />;;   (set-face-foreground 'rainbow-delimiters-depth-8-face &quot;slate blue&quot;)<br />;;   (set-face-foreground 'rainbow-delimiters-depth-9-face &quot;light gray&quot;)<br />;;   (set-face-foreground 'rainbow-delimiters-unmatched-face &quot;white&quot;))<br />;; (add-hook 'rainbow-delimiters-mode-hook 'rainbow-delimiters-colors)</p><p>#+end_src<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="visual-regexp">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+begin_src emacs-lisp :tangle yes<br />(require 'visual-regexp)<br />(define-key global-map (kbd &quot;C-c r&quot;) 'vr/replace)<br />(define-key global-map (kbd &quot;C-c q&quot;) 'vr/query-replace)</p><p>#+end_src</p><p><br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="org-bullets">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+begin_src emacs-lisp :tangle yes<br />(require 'org-bullets)<br />(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))</p><p>#+end_src<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="powerline">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p><br />#+begin_src emacs-lisp :tangle yes<br />(require 'powerline)<br />(powerline-default-theme)</p><p>;; ;; https://github.com/howardabrams/dot-files/blob/master/emacs-mode-line.org</p><p>;; Which function mode<br />(setq which-func-unknown &quot;&quot;)<br />(which-function-mode 1)</p><p>(setq which-func-format<br />&#160;&#160;&#160;&#160;&#160;&#160;`(&quot; &quot;<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(:propertize which-func-current local-map<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(keymap<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(mode-line keymap<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(mouse-3 . end-of-defun)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(mouse-2 . narrow-to-defun)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(mouse-1 . beginning-of-defun)))<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;face which-func<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mouse-face mode-line-highlight<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;help-echo &quot;mouse-1: go to beginning\n\<br />mouse-2: toggle rest visibility\n\<br />mouse-3: go to end&quot;)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot; &quot;))</p><p>(custom-set-faces<br />&#160;'(mode-line-buffer-id ((t (:foreground &quot;#008000&quot; :bold t))))<br />&#160;'(which-func ((t (:foreground &quot;#008000&quot;))))<br />&#160;'(mode-line ((t (:foreground &quot;#008000&quot; :background &quot;#dddddd&quot; :box nil))))<br />&#160;'(mode-line-inactive ((t (:foreground &quot;#008000&quot; :background &quot;#bbbbbb&quot; :box<br />&#160;nil)))))</p><p>(defun powerline-simpler-vc-mode (s)<br />&#160;&#160;(if s<br />&#160;&#160;&#160;&#160;&#160;&#160;(replace-regexp-in-string &quot;Git:&quot; &quot;&quot; s)<br />&#160;&#160;&#160;&#160;s))</p><p>(defun powerline-simpler-minor-display (s)<br />&#160;&#160;(replace-regexp-in-string<br />&#160;&#160;&#160;(concat &quot; &quot;<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(mapconcat 'identity '(&quot;Undo-Tree&quot; &quot;GitGutter&quot; &quot;Projectile&quot;<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;Abbrev&quot; &quot;ColorIds&quot; &quot;MRev&quot; &quot;ElDoc&quot; &quot;Paredit&quot;<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;+1&quot; &quot;+2&quot; &quot;FlyC&quot; &quot;Fly&quot; ;; &quot;:1/0&quot;<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;Fill&quot; &quot;AC&quot; &quot;FIC&quot;) &quot;\\|&quot;)) &quot;&quot; s))</p><p>(defun powerline-ha-theme ()<br />&#160;&#160;&quot;A powerline theme that removes many minor-modes that don't serve much purpose on the mode-line.&quot;<br />&#160;&#160;(interactive)<br />&#160;&#160;(setq-default mode-line-format<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'(&quot;%e&quot;<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(:eval<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(let*<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;((active<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-selected-window-active))<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(mode-line<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(if active 'mode-line 'mode-line-inactive))<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(face1<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(if active 'powerline-active1 'powerline-inactive1))<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(face2<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(if active 'powerline-active2 'powerline-inactive2))<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(separator-left<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(intern<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(format &quot;powerline-%s-%s&quot; powerline-default-separator<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(car powerline-default-separator-dir))))<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(separator-right<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(intern<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(format &quot;powerline-%s-%s&quot; powerline-default-separator<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(cdr powerline-default-separator-dir))))<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(lhs<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(list<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-raw &quot;%*&quot; nil 'l)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;;; (powerline-buffer-size nil 'l)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-buffer-id nil 'l)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-raw &quot; &quot;)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(funcall separator-left mode-line face1)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-narrow face1 'l)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-simpler-vc-mode (powerline-vc face1))))<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(rhs<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(list<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-raw mode-line-misc-info face1 'r)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-raw global-mode-string face1 'r)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-raw &quot;%4l&quot; face1 'r)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-raw &quot;:&quot; face1)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-raw &quot;%3c&quot; face1 'r)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(funcall separator-right face1 mode-line)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-raw &quot; &quot;)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-raw &quot;%6p&quot; nil 'r)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-hud face2 face1)))<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(center<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(list<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-raw &quot; &quot; face1)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(funcall separator-left face1 face2)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(when<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(boundp 'erc-modified-channels-object)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-raw erc-modified-channels-object face2 'l))<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-major-mode face2 'l)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-process face2)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-raw &quot; :&quot; face2)</p><p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-simpler-minor-display (powerline-minor-modes face2 'l))</p><p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-raw &quot; &quot; face2)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(funcall separator-right face2 face1))))<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(concat<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-render lhs)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-fill-center face1<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(/<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-width center)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2.0))<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-render center)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-fill face1<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-width rhs))<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(powerline-render rhs)))))))</p><p>(powerline-ha-theme)<br />#+end_src<br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="Visual Stuff">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p><br />#+begin_src emacs-lisp :tangle yes</p><p>;; Toggle Fullscreen<br />;; Does not work<br />;; (defun toggle-fullscreen ()<br />;;   &quot;Toggle full screen on X11&quot;<br />;;   (interactive)<br />;;   (when (eq window-system 'x)<br />;;     (set-frame-parameter<br />;;      nil 'fullscreen<br />;;      (when (not (frame-parameter nil 'fullscreen)) 'fullboth))))</p><p>;; (global-set-key [f11] 'toggle-fullscreen)</p><p>;; Change Cursor Style<br />;(setq-default cursor-type 'bar)<br />(blink-cursor-mode 0)<br />; highlight the region whenever it is active<br />(transient-mark-mode t)<br />; highlight region by regexp<br />(global-hi-lock-mode t)</p><p>;; Use Colors To Highlight Commands, Etc.<br />(global-font-lock-mode t)<br />(setq font-lock-maximum-decoration t)</p><p></p><p>;; Enable Line Numbers<br />;(global-linum-mode t)</p><p>;; Add Space Next to Line Numbers<br />;; (unless window-system<br />;;   (setq linum-format &quot;%d &quot;))</p><p>;; Enable Column Numbers<br />(setq column-number-mode t)</p><p><br />;;; Highlight Current Line<br />(global-hl-line-mode +1)</p><p>;;; Use Shift To Move Around Windows<br />;(windmove-default-keybindings 'shift)</p><p>;;; Highlight parentheses when the cursor is next to them<br />(require 'paren)<br />(show-paren-mode t)</p><p>;;; * Themes<br />;;; ** color-themes<br />;; Almost-monokai theme - Download from https://github.com/lut4rp/almost-monokai<br />;(load-file &quot;~/.emacs.d/themes/color-theme-almost-monokai.el&quot;)<br />;(color-theme-almost-monokai)</p><p>;; color-theme-sanityinc-tomorrow<br />;;https://github.com/purcell/color-theme-sanityinc-tomorrow<br />(require 'color-theme-sanityinc-tomorrow)<br />(load-theme 'sanityinc-tomorrow-night t)</p><p><br />;; Org-mode source code blocks<br />(defun org-src-color-blocks-light ()<br />&#160;&#160;&quot;Colors the block headers and footers to make them stand out more for lighter themes&quot;<br />&#160;&#160;(interactive)<br />&#160;&#160;(custom-set-faces<br />&#160;&#160;&#160;'(org-block-begin-line<br />&#160;&#160;&#160;&#160;((t (:underline &quot;#A7A6AA&quot; :foreground &quot;#008ED1&quot; :background &quot;#EAEAFF&quot;))))<br />&#160;&#160;&#160;'(org-block-background<br />&#160;&#160;&#160;&#160;&#160;((t (:background &quot;#FFFFEA&quot;))))<br />&#160;&#160;&#160;'(org-block-end-line<br />&#160;&#160;&#160;&#160;&#160;((t (:overline &quot;#A7A6AA&quot; :foreground &quot;#008ED1&quot; :background &quot;#EAEAFF&quot;))))</p><p>&#160;&#160;&#160;'(mode-line-buffer-id ((t (:foreground &quot;#005000&quot; :bold t))))<br />&#160;&#160;&#160;'(which-func ((t (:foreground &quot;#008000&quot;)))))</p><p>&#160;&#160;&#160;;; Looks like the minibuffer issues are only for v23<br />&#160;&#160;&#160;; (set-face-foreground 'minibuffer &quot;black&quot;)<br />&#160;&#160;&#160;; (set-face-foreground 'minibuffer-prompt &quot;red&quot;)<br />)</p><p>(defun org-src-color-blocks-dark ()<br />&#160;&#160;&quot;Colors the block headers and footers to make them stand out more for dark themes&quot;<br />&#160;&#160;(interactive)<br />&#160;&#160;(custom-set-faces<br />&#160;&#160;&#160;'(org-block-begin-line<br />&#160;&#160;&#160;&#160;&#160;((t (:foreground &quot;#008ED1&quot; :background &quot;#002E41&quot;))))<br />&#160;&#160;&#160;'(org-block-background<br />&#160;&#160;&#160;&#160;&#160;((t (:background &quot;#111111&quot;))))<br />&#160;&#160;&#160;'(org-block-end-line<br />&#160;&#160;&#160;&#160;&#160;((t (:foreground &quot;#008ED1&quot; :background &quot;#002E41&quot;))))</p><p>&#160;&#160;&#160;'(mode-line-buffer-id ((t (:foreground &quot;black&quot; :bold t))))<br />&#160;&#160;&#160;'(which-func ((t (:foreground &quot;green&quot;)))))</p><p>&#160;&#160;&#160;;; Looks like the minibuffer issues are only for v23<br />&#160;&#160;&#160;; (set-face-foreground 'minibuffer &quot;white&quot;)<br />&#160;&#160;&#160;; (set-face-foreground 'minibuffer-prompt &quot;white&quot;)<br />)</p><p>(add-hook 'org-mode-hook 'org-src-color-blocks-dark)</p><p><br />;;; ** Fonts<br />;; Font size</p><p>;; Specify the default font as =Source Code Pro=, which should already<br />;;    be <a href="http://blogs.adobe.com/typblography/2012/09/source-code-pro.html">downloaded</a> and installed.</p><p>;; =Source Code Pro= is also available in Google Fonts according to this<br />;; discussion: <a href="http://askubuntu.com/questions/193072/how-to-use-the-new-adobe-source-code-pro-font">http://askubuntu.com/questions/193072/how-to-use-the-new-adobe-source-code-pro-font</a></p><p><br />(when (window-system)<br />&#160;&#160;(set-frame-font &quot;Source Code Pro&quot;)<br />&#160;&#160;(set-face-attribute 'default nil :font &quot;Source Code Pro&quot; :height 140)<br />&#160;&#160;(set-face-font 'default &quot;Source Code Pro&quot;))</p><p>(global-set-key (kbd &quot;C-x C-+&quot;) 'text-scale-increase)<br />(global-set-key (kbd &quot;C-x C--&quot;) 'text-scale-decrease)</p><p></p><p>;;; ** custom-set-faces<br />;;; Background - #1f2019 is nice but not compatible with xterm.<br />;; (custom-set-faces<br />;;  ;; custom-set-faces was added by Custom.<br />;;  ;; If you edit it by hand, you could mess it up, so be careful.<br />;;  ;; Your init file should contain only one such instance.<br />;;  ;; If there is more than one, they won't work right.<br />;;  '(default ((t (:inherit nil :stipple nil :background &quot;gray12&quot; :foreground &quot;#F8F8F2&quot; :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :foundry &quot;apple&quot; :family &quot;Inconsolata&quot;))))<br />;;  '(hl-line ((t (:background &quot;gray20&quot;))))<br />;;  '(linum ((t (:background &quot;gray12&quot; :foreground &quot;white&quot;))))<br />;;  '(minibuffer-prompt ((t (:foreground &quot;green&quot;))))<br />;;  '(region ((t (:background &quot;#6DC5F1&quot;))))<br />;;  '(show-paren-match ((t (:background &quot;SteelBlue1&quot; :foreground &quot;gray100&quot;))))<br />;;  '(show-paren-mismatch ((((class color)) (:background &quot;red&quot; :foreground &quot;white&quot;))))<br />;;  '(web-mode-html-attr-name-face ((t (:foreground &quot;#7fe22e&quot;))))<br />;;  '(web-mode-html-attr-value-face ((t (:foreground &quot;#E6DB74&quot;))))<br />;;  '(web-mode-html-tag-face ((t (:foreground &quot;#f92672&quot;)))))</p><p><br />#+end_src</p><p></p><p></p><p></p><p></p><p><br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Org">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p><br />&#160;&#160;Markdown export<br />#+begin_src emacs-lisp :tangle yes<br />(eval-after-load &quot;org&quot;<br />&#160;&#160;'(require 'ox-md nil t))<br />#+end_src</p><p><br />#+begin_src emacs-lisp :tangle yes<br />;;; Orgstruct minor mode<br />;(add-hook 'emacs-lisp-mode-hook 'turn-on-orgstruct)<br />(add-hook 'emacs-lisp-mode-hook 'turn-on-orgstruct++)<br />;(add-hook 'emacs-lisp-mode-hook 'turn-on-orgtbl)</p><p>;;; Org-mode (Easier on the eyes)<br />;;(setq org-startup-indented t)<br />(setq org-hide-leading-stars t)<br />(setq org-columns-content t)<br />(setq org-align-all-tags t)</p><p>;;; mobileorg setup<br />(setq org-directory &quot;~/Dev/org&quot;)<br />(setq org-mobile-directory &quot;~/Dropbox/Apps/MobileOrg&quot;)<br />(setq org-agenda-files (quote (&quot;~/Dev/org/agenda.org&quot;)))<br />(setq org-mobile-inbox-for-pull &quot;~/Dev/org/mobileorg-inbox.org&quot;)<br />;; Enable encryption<br />(setq org-mobile-use-encryption t)<br />;; Set a password<br />(setq org-mobile-encryption-password &quot;shafayet&quot;)</p><p>#+end_src<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Environments" folded="true">
<node text="Python-Mode">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p><br />#+begin_src emacs-lisp :tangle yes<br />;; Python Mode Settings<br />(require 'python-mode)<br />(add-to-list 'auto-mode-alist '(&quot;\\.py$&quot; . python-mode))<br />(setq py-electric-colon-active t)<br />(add-hook 'python-mode-hook 'autopair-mode)<br />(add-hook 'python-mode-hook 'yas-minor-mode)</p><p>#+end_src<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Web-mode">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p><br />#+begin_src emacs-lisp :tangle yes<br />;; Web-Mode Settings<br />(add-to-list 'auto-mode-alist '(&quot;\\.phtml\\'&quot; . web-mode))<br />(add-to-list 'auto-mode-alist '(&quot;\\.tpl\\.php\\'&quot; . web-mode))<br />(add-to-list 'auto-mode-alist '(&quot;\\.jsp\\'&quot; . web-mode))<br />(add-to-list 'auto-mode-alist '(&quot;\\.as[cp]x\\'&quot; . web-mode))<br />(add-to-list 'auto-mode-alist '(&quot;\\.erb\\'&quot; . web-mode))<br />(add-to-list 'auto-mode-alist '(&quot;\\.mustache\\'&quot; . web-mode))<br />(add-to-list 'auto-mode-alist '(&quot;\\.djhtml\\'&quot; . web-mode))<br />(add-to-list 'auto-mode-alist '(&quot;\\.html?\\'&quot; . web-mode))</p><p>(defun web-mode-hook ()<br />&#160;&#160;&quot;Hooks for Web mode.&quot;<br />&#160;&#160;(setq web-mode-markup-indent-offset 4)<br />&#160;&#160;(setq web-mode-css-indent-offset 2)<br />&#160;&#160;(setq web-mode-code-indent-offset 2)<br />&#160;&#160;(setq web-mode-enable-current-element-highlight t)<br />)<br />(add-hook 'web-mode-hook  'web-mode-hook)</p><p>#+end_src<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="js2-mode">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p><br />#+begin_src emacs-lisp :tangle yes<br />;;  js2-mode Settings<br />(add-to-list 'auto-mode-alist '(&quot;\\.js$&quot; . js2-mode))<br />(add-to-list 'auto-mode-alist '(&quot;\\.json$&quot; . js2-mode))</p><p><br />#+end_src<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="C-mode">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p><br />#+begin_src emacs-lisp :tangle yes<br />(defun my-c-mode-common-hook ()<br />&#160;&#160;(setq c-basic-offset 4)<br />&#160;&#160;(c-set-offset 'substatement-open 0))<br />(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)</p><p>#+end_src</p><p></p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="Custom Stuff">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p><br />#+begin_src emacs-lisp :tangle yes<br />;;; ** Custom Functions<br />;;; *** Smarter move to beginning of line<br />;; Collected from: <a href="http://emacsredux.com/blog/2013/05/22/smarter-navigation-to-the-beginning-of-a-line/">http://emacsredux.com/blog/2013/05/22/smarter-navigation-to-the-beginning-of-a-line/</a><br />(defun smarter-move-beginning-of-line (arg)<br />&#160;&#160;&#160;&#160;&quot;Move point back to indentation of beginning of line.</p><p>Move point to the first non-whitespace character on this line.<br />If point is already there, move to the beginning of the line.<br />Effectively toggle between the first non-whitespace character and<br />the beginning of the line.</p><p>If ARG is not nil or 1, move forward ARG - 1 lines first.  If<br />point reaches the beginning or end of the buffer, stop there.&quot;<br />&#160;&#160;&#160;&#160;(interactive &quot;^p&quot;)<br />&#160;&#160;&#160;&#160;(setq arg (or arg 1))</p><p>&#160;&#160;&#160;&#160;;; Move lines first<br />&#160;&#160;&#160;&#160;(when (/= arg 1)<br />&#160;&#160;&#160;&#160;&#160;&#160;(let ((line-move-visual nil))<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(forward-line (1- arg))))</p><p>&#160;&#160;&#160;&#160;(let ((orig-point (point)))<br />&#160;&#160;&#160;&#160;&#160;&#160;(back-to-indentation)<br />&#160;&#160;&#160;&#160;&#160;&#160;(when (= orig-point (point))<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(move-beginning-of-line 1))))</p><p>;; remap C-a to `smarter-move-beginning-of-line'<br />(global-set-key [remap move-beginning-of-line]<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'smarter-move-beginning-of-line)</p><p><br />;;; Inserts file name at point using C-c f<br />;; Collected from: https://github.com/TikhonJelvis/dotfiles/blob/master/.emacs<br />(defun file-name-at-point (add-to-kill-ring)<br />&#160;&#160;&#160;&#160;&quot;Prompts the user for a file path using the standard C-x C-f<br />interface and inserts it at point.&quot;<br />&#160;&#160;&#160;&#160;(interactive &quot;P&quot;)<br />&#160;&#160;&#160;&#160;(let ((action (if add-to-kill-ring 'kill-new 'insert))<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(path (if ido-mode<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(ido-read-file-name &quot;file path: &quot;)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(read-file-name &quot;file path: &quot;))))<br />&#160;&#160;&#160;&#160;&#160;&#160;(apply action (list path))))<br />(global-set-key (kbd &quot;C-c f&quot;) 'file-name-at-point)</p><p>;;; Autocreate directory when finding file<br />(defadvice find-file (before make-directory-maybe (filename &amp;optional wildcards) activate)<br />&#160;&#160;&quot;Create parent directory if not exists while visiting file.&quot;<br />&#160;&#160;(unless (file-exists-p filename)<br />&#160;&#160;&#160;&#160;(let ((dir (file-name-directory filename)))<br />&#160;&#160;&#160;&#160;&#160;&#160;(unless (file-exists-p dir)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(make-directory dir)))))</p><p>;;; *** Smarter paragraph movement<br />;; <a href="http://ergoemacs.org/emacs/emacs_move_by_paragraph.html">http://ergoemacs.org/emacs/emacs_move_by_paragraph.html</a></p><p>(defun ergoemacs-forward-block ()<br />&#160;&#160;&quot;Move cursor forward to the beginning of next text block.<br />A text block is separated by 2 empty lines (or line with just whitespace).<br />In most major modes, this is similar to `forward-paragraph', but this command's behavior is the same regardless of syntax table.&quot;<br />&#160;&#160;(interactive)<br />&#160;&#160;(if (search-forward-regexp &quot;\n[[:blank:]\n]*\n+&quot; nil &quot;NOERROR&quot;)<br />&#160;&#160;&#160;&#160;&#160;&#160;(progn (backward-char))<br />&#160;&#160;&#160;&#160;(progn (goto-char (point-max)))))</p><p>(defun ergoemacs-backward-block ()<br />&#160;&#160;&quot;Move cursor backward to previous text block.<br />See: `ergoemacs-forward-block'&quot;<br />&#160;&#160;(interactive)<br />&#160;&#160;(if (search-backward-regexp &quot;\n[\t\n ]*\n+&quot; nil &quot;NOERROR&quot;)<br />&#160;&#160;&#160;&#160;&#160;&#160;(progn<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(skip-chars-backward &quot;\n\t &quot;)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(forward-char 1))<br />&#160;&#160;&#160;&#160;(progn (goto-char (point-min)))))</p><p>;; map M-p to `ergoemacs-forward-block'<br />(global-set-key (kbd &quot;M-n&quot;) 'ergoemacs-forward-block)</p><p>;; map M-n to `ergoemacs-backward-block'<br />(global-set-key (kbd &quot;M-p&quot;) 'ergoemacs-backward-block)</p><p><br />#+end_src<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Win32">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>Setup for Emacs when on Windows.</p><p>#+begin_src emacs-lisp :tangle yes<br />;; Win32 Setup<br />(when (eq window-system 'w32)<br />&#160;&#160;(setq default-directory &quot;C:/Users/shafi/home&quot;)<br />&#160;&#160;(set-face-attribute 'default nil :height 130)<br />&#160;&#160;(setq-default ispell-program-name &quot;C:/cygwin/bin/aspell.exe&quot;)<br />&#160;&#160;(setq org-export-odt-preferred-output-format &quot;doc&quot;)<br />&#160;&#160;; Set indentation level to 4 spaces (instead of 2)<br />&#160;&#160;(setq c-basic-offset 4)<br />&#160;&#160;; Set the extra indentation before a substatement (e.g. the opening brace in<br />&#160;&#160;; the consequent block of an if statement) to 0 (instead of '+)<br />&#160;&#160;(c-set-offset 'substatement-open 0)<br />&#160;&#160;;; csharp-mode's own csharp-insert-open-brace.<br />&#160;&#160;(add-hook 'csharp-mode-hook<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(lambda ()<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(local-set-key (kbd &quot;{&quot;) 'c-electric-brace)))</p><p>&#160;&#160;;; c-mode workaround<br />&#160;&#160;(add-hook 'c-mode-hook<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(lambda ()<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(local-set-key (kbd &quot;{&quot;) 'c-electric-brace)))<br />&#160;&#160;(message &quot;Emacs on Windows&quot;))</p><p>#+end_src<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Workarounds">
</node>
</node>
</map>
