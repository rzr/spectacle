--- output.orig.spec	2012-02-24 13:40:31.580141904 +0200
+++ output.spec	2012-02-24 13:40:31.755145845 +0200
@@ -16,6 +16,7 @@ License:    BSD
 URL:        http://www.testpkg.org/
 Source0:    http://www.testpkg.org/testpkg-%{version}.tar.gz
 Source100:  testpkg.yaml
+BuildRequires:  intltool
 
 
 %description
@@ -57,8 +58,9 @@ rm -rf %{buildroot}
 # >> install post
 # << install post
 
+%find_lang testpkg
 
-%files
+%files -f testpkg.lang
 %defattr(-,root,root,-)
 # >> files
 # << files