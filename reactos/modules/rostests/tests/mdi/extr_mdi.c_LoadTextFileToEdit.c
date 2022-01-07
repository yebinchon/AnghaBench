
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPSTR ;
typedef int LPCTSTR ;
typedef int HWND ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int ,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GPTR ;
 int GetFileSize (scalar_t__,int *) ;
 scalar_t__* GlobalAlloc (int ,int) ;
 int GlobalFree (scalar_t__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 scalar_t__ ReadFile (scalar_t__,scalar_t__*,int,int*,int *) ;
 scalar_t__ SetWindowText (int ,scalar_t__*) ;
 int TRUE ;

BOOL LoadTextFileToEdit(HWND hEdit, LPCTSTR pszFileName)
{
 HANDLE hFile;
 BOOL bSuccess = FALSE;

 hFile = CreateFile(pszFileName, GENERIC_READ, FILE_SHARE_READ, ((void*)0),
  OPEN_EXISTING, 0, ((void*)0));
 if(hFile != INVALID_HANDLE_VALUE)
 {
  DWORD dwFileSize;

  dwFileSize = GetFileSize(hFile, ((void*)0));
  if(dwFileSize != 0xFFFFFFFF)
  {
   LPSTR pszFileText;

   pszFileText = GlobalAlloc(GPTR, dwFileSize + 1);
   if(pszFileText != ((void*)0))
   {
    DWORD dwRead;

    if(ReadFile(hFile, pszFileText, dwFileSize, &dwRead, ((void*)0)))
    {
     pszFileText[dwFileSize] = 0;
     if(SetWindowText(hEdit, pszFileText))
      bSuccess = TRUE;
    }
    GlobalFree(pszFileText);
   }
  }
  CloseHandle(hFile);
 }
 return bSuccess;
}
