
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char _TCHAR ;


 int EINVAL ;
 int ENOENT ;
 int ERANGE ;
 scalar_t__ GetFileAttributes (char const*) ;
 int GetFullPathName (char const*,int,char*,int *) ;
 int GetLastError () ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int MAX_PATH ;
 int MSVCRT_CHECK_PMT (int) ;
 int MSVCRT_INVALID_PMT (char*,int) ;
 int _dosmaperr (int ) ;
 int* _errno () ;
 int _set_errno (int) ;
 int _tcscat (char*,char const*) ;
 int _tcscpy (char*,char*) ;
 int _tcslen (char*) ;
 char* _tgetenv (char const*) ;
 int memcpy (char*,char*,int) ;

int _tsearchenv_s(const _TCHAR* file, const _TCHAR* env, _TCHAR *buf, size_t count)
{
  _TCHAR *envVal, *penv;
  _TCHAR curPath[MAX_PATH];

  if (!MSVCRT_CHECK_PMT(file != ((void*)0)) || !MSVCRT_CHECK_PMT(buf != ((void*)0)) ||
      !MSVCRT_CHECK_PMT(count > 0))
  {
      *_errno() = EINVAL;
      return EINVAL;
  }

  *buf = '\0';


  if (GetFileAttributes( file ) != INVALID_FILE_ATTRIBUTES)
  {
    GetFullPathName( file, MAX_PATH, buf, ((void*)0) );
    _dosmaperr(GetLastError());
    return 0;
  }


  envVal = _tgetenv(env);
  if (!envVal)
  {
    _set_errno(ENOENT);
    return ENOENT;
  }

  penv = envVal;

  do
  {
    _TCHAR *end = penv;

    while(*end && *end != ';') end++;
    if (penv == end || !*penv)
    {
      _set_errno(ENOENT);
      return ENOENT;
    }
    memcpy(curPath, penv, (end - penv) * sizeof(_TCHAR));
    if (curPath[end - penv] != '/' && curPath[end - penv] != '\\')
    {
      curPath[end - penv] = '\\';
      curPath[end - penv + 1] = '\0';
    }
    else
      curPath[end - penv] = '\0';

    _tcscat(curPath, file);
    if (GetFileAttributes( curPath ) != INVALID_FILE_ATTRIBUTES)
    {
      if (_tcslen(curPath) + 1 > count)
      {
          MSVCRT_INVALID_PMT("buf[count] is too small", ERANGE);
          return ERANGE;
      }
      _tcscpy(buf, curPath);
      return 0;
    }
    penv = *end ? end + 1 : end;
  } while(1);

}
