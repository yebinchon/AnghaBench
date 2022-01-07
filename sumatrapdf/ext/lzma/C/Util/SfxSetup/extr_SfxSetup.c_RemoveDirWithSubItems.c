
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ WRes ;
struct TYPE_4__ {char* cFileName; int dwFileAttributes; } ;
typedef TYPE_1__ WIN32_FIND_DATAW ;
typedef int WCHAR ;
typedef scalar_t__ HANDLE ;


 scalar_t__ DeleteFileW (int*) ;
 scalar_t__ ERROR_NO_MORE_FILES ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFileW (int*,TYPE_1__*) ;
 int FindNextFileW (scalar_t__,TYPE_1__*) ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int RemoveDirectoryW (int*) ;
 int SetFileAttributesW (int*,int ) ;
 int wcscat (int*,char*) ;
 scalar_t__ wcscmp (char*,char*) ;
 int wcscpy (int*,char*) ;
 size_t wcslen (int*) ;

__attribute__((used)) static WRes RemoveDirWithSubItems(WCHAR *path)
{
  WIN32_FIND_DATAW fd;
  HANDLE handle;
  WRes res = 0;
  size_t len = wcslen(path);
  wcscpy(path + len, L"*");
  handle = FindFirstFileW(path, &fd);
  path[len] = L'\0';
  if (handle == INVALID_HANDLE_VALUE)
    return GetLastError();
  for (;;)
  {
    if (wcscmp(fd.cFileName, L".") != 0 &&
        wcscmp(fd.cFileName, L"..") != 0)
    {
      wcscpy(path + len, fd.cFileName);
      if ((fd.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) != 0)
      {
        wcscat(path, L"\\");
        res = RemoveDirWithSubItems(path);
      }
      else
      {
        SetFileAttributesW(path, 0);
        if (DeleteFileW(path) == 0)
          res = GetLastError();
      }
      if (res != 0)
        break;
    }
    if (!FindNextFileW(handle, &fd))
    {
      res = GetLastError();
      if (res == ERROR_NO_MORE_FILES)
        res = 0;
      break;
    }
  }
  path[len] = L'\0';
  FindClose(handle);
  if (res == 0)
  {
    if (!RemoveDirectoryW(path))
      res = GetLastError();
  }
  return res;
}
