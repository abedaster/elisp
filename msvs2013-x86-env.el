;; msvs2013-x86-env.el, v0.1
;;
;; written by : abedaster <abedaster@outlook.com>
;;     inspired from vc-x86-env (http://www.emacswiki.org/emacs/MSVisualStudio#toc4)
;;
;; msvs2013-x86-env mode can use MS C/C++ Compiler(cl.exe), 
;; MS C# Compiler(csc.exe), MS VB Compiler(vbc.exe) 
;; and LLVM/Clang Visual Studio interface (clang-cl.exe).
;;
;; This is for only Visual Stuio 2013,
;;
;; License: GPLv3
;;

(defun msvs2013-x86-env ()
  (interactive)
  (setenv "VSINSTALLDIR" "C:\\Program Files (x86)\\Microsoft Visual Studio 12.0")
  (setenv "FrameworkDir32" "C:\\Windows\\Microsoft.NET\\Framework")
  (setenv "FrameworkVersion32" "v4.0.3.0319")
  (setenv "Framework40Version" "v4.0")
  (setenv "FrameworkDir"
	  (concat (getenv "FrameworkDir32")))
  (setenv "FrameworkVersion"
	  (concat (getenv "FrameworkVersion32")))
  (setenv "VCINSTALLDIR" 
	  (concat (getenv "VSINSTALLDIR") "\\VC"))
  (setenv "IDEDir"
	  (concat (getenv "VSINSTALLDIR") "\\Common7\\IDE"))
  (setenv "ToolsDir"
	  (concat (getenv "VSINSTSLLDIR") "\\Common7\\Tools"))
  (setenv "MSBuildDir" "C:\\Program Files (x86)\\MSBuild\\12.0")
  (setenv "WindowsKitsDir" "C:\\Program Files (x86)\\Windows Kits\\8.1")
  (setenv "MSSDKDir" "C:\\Program Files (x86)\\Microsoft SDKs\\Windows\\v8.1A")
  (setenv "PATH"
	  (concat 
	   (concat (getenv "IDEDir") "\\CommonExtensions\\Microsoft\\TestWindow")
	   path-separator
	   (concat (getenv "MSBuildDir") "\\bin")
	   path-separator
	   (getenv "IDEDir")
	   path-separator
	   (concat (getenv "VCINSTALLDIR") "\\BIN")
	   path-separator
	   (getenv "ToolsDir")
	   path-separator
	   (concat (getenv "FrameworkDir") "\\" (getenv "FrameworkVersion"))
	   path-separator
	   (concat (getenv "VCINSTALLDIR") "\\VCPackages")
	   path-separator
	   (concat (getenv "VSINSTSLLDIR") "\\Team Tools\\Performanfe Tools")
	   path-separator
	   (concat (getenv "WindowsKitsDir") "\\bin\\x86")
	   path-separator
	   (concat (getenv "MSSDKDir") "\\bin\\NETFX 4.5.1 Tools")
	   path-separator
	   (getenv "PATH")))
  (setenv "INCLUDE"
	  (concat
	   (concat (getenv "VCINSTALLDIR") "\\INCLUDE")
	   path-separator
	   (concat (getenv "WindowsKitsDir") "\\include\\shared")
	   path-separator
	   (concat (getenv "WindowsKitsDir") "\\include\\um")
	   path-separator
	   (concat (getenv "WindowsKitsDir") "\\include\\winrt")))
  (setenv "LIB"
	  (concat 
	   (concat (getenv "VCINSTALLDIR") "\\LIB")
	   path-separator
	   (concat (getenv "WindowsKitsDir") "\\lib\\winv6.3\\um\\x86")))
  (setenv "LIBPATH"
	  (concat
	   (concat (getenv "FrameworkDir") "\\" (getenv "FrameworkVersion"))
	   path-separator
	   (concat (getenv "VCINSTALLDIR") "\\LIB")
	   path-separator
	   (concat (getenv "WindowsKitsDir") "\\Lib\\winv6.3\\um\\x86")
	   path-separator
	   (concat (getenv "WindowsKitsDir") "\\References\\CommonConfiguration\\Neutral")
	   path-separator
	   (concat (getenv "MSSDKDir") "\\ExtensionSDKs\\Microsoft.VCLibs\\12.0\\References\\CommonConfiguration\\neutral")))
  (setenv "WindowsSDK_ExecutablePath_x64"
	  (concat (getenv "MSSDKDir") "\\bin\\NETFX 4.5.1 Tools\\x64"))
  (setenv "WindowsSDK_ExecutablePath_x86"
	  (concat (getenv "MSSDKDir") "\\bin\\NETFX 4.5.1 Tools"))
  (shell))
