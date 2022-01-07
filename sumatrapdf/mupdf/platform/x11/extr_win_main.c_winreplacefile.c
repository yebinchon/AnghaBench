
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int pdfapp_t ;


 int CP_UTF8 ;
 int DeleteFile (int *) ;
 int MoveFile (int *,int *) ;
 int MultiByteToWideChar (int ,int ,char*,int,int *,int) ;
 int PATH_MAX ;
 int REPLACEFILE_IGNORE_MERGE_ERRORS ;
 int ReplaceFile (int *,int *,int *,int ,int *,int *) ;
 int pdfapp_error (int *,char*) ;

void winreplacefile(pdfapp_t *app, char *source, char *target)
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




 DeleteFile(wtarget);
 MoveFile(wsource, wtarget);

}
