
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int HWND ;
typedef int DWORD ;


 int ERROR_INVALID_DATA ;
 scalar_t__ GetDlgItemTextW (int ,int,int ,int) ;
 int GetLastError () ;
 int SetLastError (int ) ;
 int walloc (char*,int) ;
 scalar_t__ wchar_to_utf8_no_alloc (int ,char*,int) ;
 int wfree (char*) ;
 int wlpString ;

__attribute__((used)) static __inline UINT GetDlgItemTextU(HWND hDlg, int nIDDlgItem, char* lpString, int nMaxCount)
{
 UINT ret = 0;
 DWORD err = ERROR_INVALID_DATA;

 walloc(lpString, nMaxCount);
 ret = GetDlgItemTextW(hDlg, nIDDlgItem, wlpString, nMaxCount);
 err = GetLastError();
 if ((ret != 0) && ((ret = wchar_to_utf8_no_alloc(wlpString, lpString, nMaxCount)) == 0)) {
  err = GetLastError();
 }
 wfree(lpString);
 SetLastError(err);
 return ret;
}
