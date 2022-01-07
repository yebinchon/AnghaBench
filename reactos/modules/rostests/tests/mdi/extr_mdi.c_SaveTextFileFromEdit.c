
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPSTR ;
typedef int LPCTSTR ;
typedef int HWND ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int ,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 int GPTR ;
 scalar_t__ GetWindowText (int ,int *,scalar_t__) ;
 scalar_t__ GetWindowTextLength (int ) ;
 int * GlobalAlloc (int ,scalar_t__) ;
 int GlobalFree (int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int TRUE ;
 scalar_t__ WriteFile (scalar_t__,int *,scalar_t__,scalar_t__*,int *) ;

BOOL SaveTextFileFromEdit(HWND hEdit, LPCTSTR pszFileName)
{
 HANDLE hFile;
 BOOL bSuccess = FALSE;

 hFile = CreateFile(pszFileName, GENERIC_WRITE, 0, ((void*)0),
  CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
 if(hFile != INVALID_HANDLE_VALUE)
 {
  DWORD dwTextLength;

  dwTextLength = GetWindowTextLength(hEdit);

  if(dwTextLength > 0)
  {
   LPSTR pszText;
   DWORD dwBufferSize = dwTextLength + 1;

   pszText = GlobalAlloc(GPTR, dwBufferSize);
   if(pszText != ((void*)0))
   {
    if(GetWindowText(hEdit, pszText, dwBufferSize))
    {
     DWORD dwWritten;

     if(WriteFile(hFile, pszText, dwTextLength, &dwWritten, ((void*)0)))
      bSuccess = TRUE;
    }
    GlobalFree(pszText);
   }
  }
  CloseHandle(hFile);
 }
 return bSuccess;
}
