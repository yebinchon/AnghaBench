
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _TCHAR ;
typedef scalar_t__ DWORD ;


 int ERANGE ;
 scalar_t__ GetCurrentDirectory (int,int *) ;
 int GetLastError () ;
 int MAX_PATH ;
 int _dosmaperr (int ) ;
 int _set_errno (int ) ;
 int _tcscpy (int *,int *) ;
 int * _tcsdup (int *) ;

_TCHAR* _tgetcwd(_TCHAR* buf, int size)
{
  _TCHAR dir[MAX_PATH];
  DWORD dir_len = GetCurrentDirectory(MAX_PATH,dir);

  if (dir_len == 0)
  {
    _dosmaperr(GetLastError());
    return ((void*)0);
  }

  if (!buf)
  {
    return _tcsdup(dir);
  }

  if (dir_len >= (DWORD)size)
  {
    _set_errno(ERANGE);
    return ((void*)0);
  }

  _tcscpy(buf,dir);
  return buf;
}
