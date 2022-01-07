
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int HWND ;
typedef int DWORD ;


 int ERROR_INVALID_DATA ;
 int ERROR_OUTOFMEMORY ;
 int GetLastError () ;
 int GetWindowTextLengthW (int ) ;
 int GetWindowTextW (int ,char*,int) ;
 int SetLastError (int ) ;
 char* calloc (int,int) ;
 int sfree (char*) ;
 scalar_t__ strlen (char*) ;
 char* wchar_to_utf8 (char*) ;

__attribute__((used)) static __inline int GetWindowTextLengthU(HWND hWnd)
{
 int ret = 0;
 DWORD err = ERROR_INVALID_DATA;
 wchar_t* wbuf = ((void*)0);
 char* buf = ((void*)0);

 ret = GetWindowTextLengthW(hWnd);
 err = GetLastError();
 if (ret == 0) goto out;
 wbuf = calloc(ret, sizeof(wchar_t));
 err = GetLastError();
 if (wbuf == ((void*)0)) {
  err = ERROR_OUTOFMEMORY; ret = 0; goto out;
 }
 ret = GetWindowTextW(hWnd, wbuf, ret);
 err = GetLastError();
 if (ret == 0) goto out;
 buf = wchar_to_utf8(wbuf);
 err = GetLastError();
 if (buf == ((void*)0)) {
  err = ERROR_OUTOFMEMORY; ret = 0; goto out;
 }
 ret = (int)strlen(buf) + 2;
 err = GetLastError();
out:
 sfree(wbuf);
 sfree(buf);
 SetLastError(err);
 return ret;
}
