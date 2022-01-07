
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LPRECT ;
typedef int LPDRAWTEXTPARAMS ;
typedef int LPCSTR ;
typedef int HDC ;
typedef int DWORD ;


 int DrawTextExW (int ,int ,int,int ,int ,int ) ;
 int ERROR_INVALID_DATA ;
 int GetLastError () ;
 int SetLastError (int ) ;
 int wconvert (int ) ;
 int wfree (int ) ;
 int wlpchText ;

__attribute__((used)) static __inline int DrawTextExU(HDC hDC, LPCSTR lpchText, int nCount, LPRECT lpRect, UINT uFormat, LPDRAWTEXTPARAMS lpDTParams)
{
 int ret;
 DWORD err = ERROR_INVALID_DATA;
 wconvert(lpchText);
 ret = DrawTextExW(hDC, wlpchText, nCount, lpRect, uFormat, lpDTParams);
 err = GetLastError();
 wfree(lpchText);
 SetLastError(err);
 return ret;
}
