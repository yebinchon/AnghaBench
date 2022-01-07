
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int DWORD ;


 int ERROR_INVALID_DATA ;
 int GetLastError () ;
 int GetWindowTextW (int ,int ,int) ;
 int SetLastError (int ) ;
 int walloc (char*,int) ;
 int wchar_to_utf8_no_alloc (int ,char*,int) ;
 int wfree (char*) ;
 int wlpString ;

__attribute__((used)) static __inline int GetWindowTextU(HWND hWnd, char* lpString, int nMaxCount)
{
 int ret = 0;
 DWORD err = ERROR_INVALID_DATA;

 if ((lpString != ((void*)0)) && (nMaxCount > 0))
  lpString[0] = 0;

 walloc(lpString, nMaxCount);
 ret = GetWindowTextW(hWnd, wlpString, nMaxCount);
 err = GetLastError();

 if ( (ret != 0) && ((ret = wchar_to_utf8_no_alloc(wlpString, lpString, nMaxCount)) == 0) ) {
  err = GetLastError();
 }
 wfree(lpString);
 SetLastError(err);
 return ret;
}
