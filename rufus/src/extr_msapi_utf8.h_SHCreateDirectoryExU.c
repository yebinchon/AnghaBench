
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SECURITY_ATTRIBUTES ;
typedef int HWND ;
typedef void* DWORD ;


 void* ERROR_INVALID_DATA ;
 void* GetLastError () ;
 int SHCreateDirectoryExW (int ,int ,int *) ;
 int SetLastError (void*) ;
 int wconvert (char const*) ;
 int wfree (char const*) ;
 int wpszPath ;

__attribute__((used)) static __inline int SHCreateDirectoryExU(HWND hwnd, const char* pszPath, SECURITY_ATTRIBUTES *psa)
{
 int ret = ERROR_INVALID_DATA;
 DWORD err = ERROR_INVALID_DATA;
 wconvert(pszPath);
 ret = SHCreateDirectoryExW(hwnd, wpszPath, psa);
 err = GetLastError();
 wfree(pszPath);
 SetLastError(err);
 return ret;
}
