
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LPSTR ;
typedef int HINSTANCE ;
typedef int DWORD ;


 int ERROR_INVALID_DATA ;
 int ERROR_INVALID_PARAMETER ;
 int GetLastError () ;
 int LoadStringW (int ,int ,int ,int) ;
 int SetLastError (int ) ;
 int walloc (int ,int) ;
 int wchar_to_utf8_no_alloc (int ,int ,int) ;
 int wfree (int ) ;
 int wlpBuffer ;

__attribute__((used)) static __inline int LoadStringU(HINSTANCE hInstance, UINT uID, LPSTR lpBuffer, int nBufferMax)
{
 int ret;
 DWORD err = ERROR_INVALID_DATA;
 if (nBufferMax == 0) {

  SetLastError(ERROR_INVALID_PARAMETER);
  return 0;
 }

 walloc(lpBuffer, nBufferMax);
 ret = LoadStringW(hInstance, uID, wlpBuffer, nBufferMax);
 err = GetLastError();
 if ((ret > 0) && ((ret = wchar_to_utf8_no_alloc(wlpBuffer, lpBuffer, nBufferMax)) == 0)) {
  err = GetLastError();
 }
 wfree(lpBuffer);
 SetLastError(err);
 return ret;
}
