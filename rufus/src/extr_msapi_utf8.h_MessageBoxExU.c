
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int UINT ;
typedef int LPCSTR ;
typedef int HWND ;
typedef int DWORD ;


 int ERROR_INVALID_DATA ;
 int GetLastError () ;
 int MessageBoxExW (int ,int ,int ,int ,int ) ;
 int SetLastError (int ) ;
 int wconvert (int ) ;
 int wfree (int ) ;
 int wlpCaption ;
 int wlpText ;

__attribute__((used)) static __inline int MessageBoxExU(HWND hWnd, LPCSTR lpText, LPCSTR lpCaption, UINT uType, WORD wLanguageId)
{
 int ret;
 DWORD err = ERROR_INVALID_DATA;
 wconvert(lpText);
 wconvert(lpCaption);
 ret = MessageBoxExW(hWnd, wlpText, wlpCaption, uType, wLanguageId);
 err = GetLastError();
 wfree(lpText);
 wfree(lpCaption);
 SetLastError(err);
 return ret;
}
