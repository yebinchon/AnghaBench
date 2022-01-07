
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LPRECT ;
typedef int LPCSTR ;
typedef int HDC ;
typedef int DWORD ;


 int DrawTextW (int ,int ,int,int ,int ) ;
 int ERROR_INVALID_DATA ;
 int GetLastError () ;
 int SetLastError (int ) ;
 int wconvert (int ) ;
 int wfree (int ) ;
 int wlpText ;

__attribute__((used)) static __inline int DrawTextU(HDC hDC, LPCSTR lpText, int nCount, LPRECT lpRect, UINT uFormat)
{
 int ret;
 DWORD err = ERROR_INVALID_DATA;
 wconvert(lpText);
 ret = DrawTextW(hDC, wlpText, nCount, lpRect, uFormat);
 err = GetLastError();
 wfree(lpText);
 SetLastError(err);
 return ret;
}
