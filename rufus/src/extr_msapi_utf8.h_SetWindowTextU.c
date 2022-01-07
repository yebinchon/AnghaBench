
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_INVALID_DATA ;
 int FALSE ;
 int GetLastError () ;
 int SetLastError (int ) ;
 int SetWindowTextW (int ,int ) ;
 int wconvert (char const*) ;
 int wfree (char const*) ;
 int wlpString ;

__attribute__((used)) static __inline BOOL SetWindowTextU(HWND hWnd, const char* lpString)
{
 BOOL ret = FALSE;
 DWORD err = ERROR_INVALID_DATA;
 wconvert(lpString);
 ret = SetWindowTextW(hWnd, wlpString);
 err = GetLastError();
 wfree(lpString);
 SetLastError(err);
 return ret;
}
