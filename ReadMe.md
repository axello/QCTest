#Summary:
I have a several years old Mac application with a simple Quartz Composer about animation view. When I wanted to recompile the app in Xcode 9.2 I got the following error:
Main.storyboard: error: The document "Main.storyboard" could not be opened. The operation couldn’t be completed. (com.apple.InterfaceBuilder error -1.)

Since then I created a new sample app with just this one view, which is available here: https://github.com/axello/QCTest
On the master branch there is a QCView and it does not compile, on the noquartz branch the only thing I've done is remove the empty QCView and now it does compile.

On both branches the view is shown correctly in Interface Builder.

##Steps to Reproduce:
Compile master branch

##Expected Results:
Should compile.

##Actual Results:
```Compilation returns the error:
"CompileStoryboard QC-Test/Base.lproj/Main.storyboard
    cd /Users/axel/Desktop/QC-Test
    export XCODE_DEVELOPER_USR_PATH=/Applications/Xcode.app/Contents/Developer/usr/bin/..
    /Applications/Xcode.app/Contents/Developer/usr/bin/ibtool --errors --warnings --notices --module QC_Test --output-partial-info-plist /Users/Shared/Xcode/DerivedData/QC-Test-dszxyoqbnzqoecgpzktrrahzbvus/Build/Intermediates.noindex/QC-Test.build/Debug/QC-Test.build/Main-SBPartialInfo.plist --auto-activate-custom-fonts --target-device mac --minimum-deployment-target 10.12 --output-format human-readable-text --compilation-directory /Users/Shared/Xcode/DerivedData/QC-Test-dszxyoqbnzqoecgpzktrrahzbvus/Build/Intermediates.noindex/QC-Test.build/Debug/QC-Test.build/Base.lproj /Users/axel/Desktop/QC-Test/QC-Test/Base.lproj/Main.storyboard

2018-01-09 09:23:25.809 ibtoold[12359:698662] Exception raised while unarchiving document objects - -[QCView _initializeRenderView]: Object creation failed
/* com.apple.ibtool.errors */
/Users/axel/Desktop/QC-Test/QC-Test/Base.lproj/Main.storyboard: error: The document "Main.storyboard" could not be opened. The operation couldn’t be completed. (com.apple.InterfaceBuilder error -1.)
    Recovery Suggestion: Check the console log for additional information."
```
Needless to say, the console (system.log) does not show anything out of the ordinary.

##Version/Build:
Xcode Version 9.2 (9C40b)

##Configuration:
Mac OS X 10.12.6
