
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;
typedef scalar_t__ LONG ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int ,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 scalar_t__ FileHandle ;
 int GENERIC_READ ;
 scalar_t__ GetFileSize (scalar_t__,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int TRUE ;

BOOL
LoadFile(LPTSTR FileName)
{
  LONG FileSize;

  FileHandle = CreateFile (FileName,
    GENERIC_READ,
    0,
    ((void*)0),
    OPEN_EXISTING,
    FILE_ATTRIBUTE_NORMAL,
    ((void*)0));
  if (FileHandle == INVALID_HANDLE_VALUE)
    return FALSE;

  FileSize = GetFileSize (FileHandle, ((void*)0));
  if (FileSize <= 0)
  {
    CloseHandle (FileHandle);
    return FALSE;
  }

  return TRUE;
}
