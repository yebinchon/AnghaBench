
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int ofc ;
struct TYPE_10__ {int lStructSize; int nFilterIndex; int Flags; int nMaxFile; struct TYPE_10__* lpstrFile; int lpstrDefExt; int lpstrTitle; int lpstrFilter; } ;
typedef TYPE_1__ TCHAR ;
typedef TYPE_1__ OPENFILENAME ;
typedef int FileName ;


 int FILEOPEN_DEFEXT ;
 int FILEOPEN_FILTER ;
 int FILEOPEN_TITLE ;
 int GetOpenFileName (TYPE_1__*) ;
 int INF_COMMAND ;
 int InstallHinfSection (int *,int *,TYPE_1__*,int ) ;
 int MAX_PATH ;
 int MB_ICONERROR ;
 int MB_OK ;
 int MessageBox (int *,int ,int *,int) ;
 int OFN_FILEMUSTEXIST ;
 int OFN_LONGNAMES ;
 int OFN_PATHMUSTEXIST ;
 int TEXT (char*) ;
 int ZeroMemory (TYPE_1__*,int) ;
 int _stprintf (TYPE_1__*,int ,TYPE_1__*) ;
 int _tcslen (TYPE_1__*) ;

int
_tmain(int argc, TCHAR *argv[])
{
 TCHAR infCommand[MAX_PATH + 32];

 if (argc <= 1)
 {
  TCHAR FileName[MAX_PATH + 1];
  OPENFILENAME ofc;
  int rv;

  ZeroMemory(&ofc, sizeof(ofc));
  ZeroMemory(FileName, MAX_PATH + 1);
  ofc.lStructSize = sizeof(ofc);
  ofc.lpstrFilter = FILEOPEN_FILTER;
  ofc.nFilterIndex = 1;
  ofc.lpstrTitle = FILEOPEN_TITLE;
  ofc.Flags = OFN_FILEMUSTEXIST | OFN_LONGNAMES | OFN_PATHMUSTEXIST;
  ofc.lpstrDefExt = FILEOPEN_DEFEXT;
  ofc.lpstrFile = FileName;
  ofc.nMaxFile = sizeof(FileName) / sizeof(TCHAR);

  rv = GetOpenFileName(&ofc);

  if (rv == 0)
   return 1;

  _stprintf(infCommand, INF_COMMAND, FileName);
 }
 else
 {
  if (_tcslen(argv[1]) > MAX_PATH)
  {
   MessageBox(((void*)0), TEXT("Command line too long to be a valid file name"), ((void*)0), MB_OK | MB_ICONERROR);
   return 2;
  }
  _stprintf(infCommand, INF_COMMAND, argv[1]);
 }

 InstallHinfSection(((void*)0), ((void*)0), infCommand, 0);

 return 0;
}
