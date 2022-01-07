
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int pdfapp_t ;


 int CP_UTF8 ;
 int CopyFile (int *,int *,int ) ;
 int FALSE ;
 int MultiByteToWideChar (int ,int ,char*,int,int *,int) ;
 int PATH_MAX ;
 int pdfapp_error (int *,char*) ;

void wincopyfile(pdfapp_t *app, char *source, char *target)
{
 wchar_t wsource[PATH_MAX];
 wchar_t wtarget[PATH_MAX];

 int sz = MultiByteToWideChar(CP_UTF8, 0, source, -1, wsource, PATH_MAX);
 if (sz == 0)
 {
  pdfapp_error(app, "cannot convert filename to Unicode");
  return;
 }

 sz = MultiByteToWideChar(CP_UTF8, 0, target, -1, wtarget, PATH_MAX);
 if (sz == 0)
 {
  pdfapp_error(app, "cannot convert filename to Unicode");
  return;
 }

 CopyFile(wsource, wtarget, FALSE);
}
