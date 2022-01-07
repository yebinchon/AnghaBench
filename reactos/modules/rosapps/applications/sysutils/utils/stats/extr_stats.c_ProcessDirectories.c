
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwFileAttributes; int cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATA ;
typedef int TCHAR ;
typedef int * LPTSTR ;
typedef scalar_t__ HANDLE ;
typedef int BOOL ;


 int BeSilent ;
 int FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FindClose (scalar_t__) ;
 int FindExInfoStandard ;
 int FindExSearchLimitToDirectories ;
 scalar_t__ FindFirstFileEx (int *,int ,TYPE_1__*,int ,int *,int ) ;
 int FindNextFile (scalar_t__,TYPE_1__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int ProcessFiles (int *) ;
 int TRUE ;
 int _T (char*) ;
 int _tcscat (int *,int ) ;
 scalar_t__ _tcscmp (int ,int ) ;
 int _tcscpy (int *,int *) ;
 int _tprintf (int ,int *) ;

BOOL
ProcessDirectories(LPTSTR Path)
{
  WIN32_FIND_DATA FindFile;
  TCHAR SearchPath[MAX_PATH];
  HANDLE SearchHandle;
  BOOL More;

  if(!BeSilent)
  {
    _tprintf (_T("Processing %s ...\n"), Path);
  }

  _tcscpy (SearchPath, Path);
  _tcscat (SearchPath, _T("\\*.*"));

  SearchHandle = FindFirstFileEx (SearchPath,
    FindExInfoStandard,
    &FindFile,
    FindExSearchLimitToDirectories,
    ((void*)0),
    0);
  if (SearchHandle != INVALID_HANDLE_VALUE)
  {
    More = TRUE;
    while (More)
    {
     if ((FindFile.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
      && (_tcscmp (FindFile.cFileName, _T(".")) != 0)
      && (_tcscmp (FindFile.cFileName, _T("..")) != 0)
      && (_tcscmp (FindFile.cFileName, _T("CVS")) != 0)
      && (_tcscmp (FindFile.cFileName, _T(".svn")) != 0))
   {
     _tcscpy (SearchPath, Path);
     _tcscat (SearchPath, _T("\\"));
     _tcscat (SearchPath, FindFile.cFileName);
       if (!ProcessDirectories (SearchPath))
          return FALSE;
       if (!ProcessFiles (SearchPath))
          return FALSE;
   }
      More = FindNextFile (SearchHandle, &FindFile);
    }
    FindClose (SearchHandle);
  }
  return TRUE;
}
