
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int pdfapp_t ;
struct TYPE_4__ {int lStructSize; int nMaxFile; char* lpstrTitle; char* lpstrFilter; int Flags; int * lpstrInitialDir; int * lpstrFile; int hwndOwner; } ;
typedef TYPE_1__ OPENFILENAME ;


 int CP_UTF8 ;
 scalar_t__ GetSaveFileName (TYPE_1__*) ;
 int MIN (int,int) ;
 int OFN_HIDEREADONLY ;
 int PATH_MAX ;
 int WideCharToMultiByte (int ,int ,int *,int,char*,int ,int *,int *) ;
 int filename ;
 int hwndframe ;
 int memset (TYPE_1__*,int ,int) ;
 int pdfapp_error (int *,char*) ;
 int strcpy (int ,char*) ;
 int * wbuf ;
 int wcscpy (int *,int *) ;

int wingetsavepath(pdfapp_t *app, char *buf, int len)
{
 wchar_t twbuf[PATH_MAX];
 OPENFILENAME ofn;

 wcscpy(twbuf, wbuf);
 memset(&ofn, 0, sizeof(OPENFILENAME));
 ofn.lStructSize = sizeof(OPENFILENAME);
 ofn.hwndOwner = hwndframe;
 ofn.lpstrFile = twbuf;
 ofn.nMaxFile = PATH_MAX;
 ofn.lpstrInitialDir = ((void*)0);
 ofn.lpstrTitle = L"MuPDF: Save PDF file";
 ofn.lpstrFilter = L"PDF Documents (*.pdf)\0*.pdf\0All Files\0*\0\0";
 ofn.Flags = OFN_HIDEREADONLY;
 if (GetSaveFileName(&ofn))
 {
  int code = WideCharToMultiByte(CP_UTF8, 0, twbuf, -1, buf, MIN(PATH_MAX, len), ((void*)0), ((void*)0));
  if (code == 0)
  {
   pdfapp_error(app, "cannot convert filename to utf-8");
   return 0;
  }

  wcscpy(wbuf, twbuf);
  strcpy(filename, buf);
  return 1;
 }
 else
 {
  return 0;
 }
}
