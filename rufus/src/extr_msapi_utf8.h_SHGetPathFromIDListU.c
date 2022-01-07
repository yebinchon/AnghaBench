
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCITEMIDLIST ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ERROR_INVALID_DATA ;
 scalar_t__ FALSE ;
 int GetLastError () ;
 int MAX_PATH ;
 scalar_t__ SHGetPathFromIDListW (int ,int ) ;
 int SetLastError (int ) ;
 int walloc (char*,int ) ;
 scalar_t__ wchar_to_utf8_no_alloc (int ,char*,int ) ;
 int wfree (char*) ;
 int wpszPath ;

__attribute__((used)) static __inline BOOL SHGetPathFromIDListU(LPCITEMIDLIST pidl, char* pszPath)
{
 BOOL ret = FALSE;
 DWORD err = ERROR_INVALID_DATA;

 walloc(pszPath, MAX_PATH);
 ret = SHGetPathFromIDListW(pidl, wpszPath);
 err = GetLastError();
 if ((ret) && (wchar_to_utf8_no_alloc(wpszPath, pszPath, MAX_PATH) == 0)) {
  err = GetLastError();
  ret = FALSE;
 }
 wfree(pszPath);
 SetLastError(err);
 return ret;
}
