
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSIZE ;
typedef int HDC ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_INVALID_DATA ;
 int FALSE ;
 int GetLastError () ;
 int GetTextExtentPoint32W (int ,int *,int,int ) ;
 int SetLastError (int ) ;
 int wconvert (char const*) ;
 scalar_t__ wcslen (int *) ;
 int wfree (char const*) ;
 int * wlpString ;

__attribute__((used)) static __inline BOOL GetTextExtentPointU(HDC hdc, const char* lpString, LPSIZE lpSize)
{
 BOOL ret = FALSE;
 DWORD err = ERROR_INVALID_DATA;
 wconvert(lpString);
 if (wlpString == ((void*)0))
  return FALSE;
 ret = GetTextExtentPoint32W(hdc, wlpString, (int)wcslen(wlpString), lpSize);
 err = GetLastError();
 wfree(lpString);
 SetLastError(err);
 return ret;
}
