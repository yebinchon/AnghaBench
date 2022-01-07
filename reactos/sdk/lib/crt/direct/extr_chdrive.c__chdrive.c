
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int EACCES ;
 int GetLastError () ;
 int SetCurrentDirectoryW (int*) ;
 int _dosmaperr (int ) ;
 int _set_errno (int ) ;

int _chdrive(int newdrive)
{
  WCHAR buffer[] = L"A:";

  buffer[0] += newdrive - 1;
  if (!SetCurrentDirectoryW( buffer ))
  {
    _dosmaperr(GetLastError());
    if (newdrive <= 0)
    {
      _set_errno(EACCES);
    }
    return -1;
  }
  return 0;
}
