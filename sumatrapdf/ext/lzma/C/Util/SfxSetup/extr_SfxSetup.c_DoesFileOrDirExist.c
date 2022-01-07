
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WIN32_FIND_DATAW ;
typedef int WCHAR ;
typedef scalar_t__ HANDLE ;
typedef int Bool ;


 int False ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFileW (int const*,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int True ;

__attribute__((used)) static Bool DoesFileOrDirExist(const WCHAR *path)
{
  WIN32_FIND_DATAW fd;
  HANDLE handle;
  handle = FindFirstFileW(path, &fd);
  if (handle == INVALID_HANDLE_VALUE)
    return False;
  FindClose(handle);
  return True;
}
