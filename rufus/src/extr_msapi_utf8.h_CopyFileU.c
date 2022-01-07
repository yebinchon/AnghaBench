
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BOOL ;


 int CopyFileW (int ,int ,int ) ;
 int ERROR_INVALID_DATA ;
 int FALSE ;
 int GetLastError () ;
 int SetLastError (int ) ;
 int wconvert (char const*) ;
 int wfree (char const*) ;
 int wlpExistingFileName ;
 int wlpNewFileName ;

__attribute__((used)) static __inline BOOL CopyFileU(const char* lpExistingFileName, const char* lpNewFileName, BOOL bFailIfExists)
{
 BOOL ret = FALSE;
 DWORD err = ERROR_INVALID_DATA;
 wconvert(lpExistingFileName);
 wconvert(lpNewFileName);
 ret = CopyFileW(wlpExistingFileName, wlpNewFileName, bFailIfExists);
 err = GetLastError();
 wfree(lpExistingFileName);
 wfree(lpNewFileName);
 SetLastError(err);
 return ret;
}
