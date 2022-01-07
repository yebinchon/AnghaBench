
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INVALID_DATA ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetModuleFileNameExW (int ,int ,int ,scalar_t__) ;
 int SetLastError (scalar_t__) ;
 int walloc (char*,scalar_t__) ;
 scalar_t__ wchar_to_utf8_no_alloc (int ,char*,scalar_t__) ;
 int wfree (char*) ;
 int wlpFilename ;

__attribute__((used)) static __inline DWORD GetModuleFileNameExU(HANDLE hProcess, HMODULE hModule, char* lpFilename, DWORD nSize)
{
 DWORD ret = 0, err = ERROR_INVALID_DATA;

 walloc(lpFilename, nSize);
 ret = GetModuleFileNameExW(hProcess, hModule, wlpFilename, nSize);
 err = GetLastError();
 if ((ret != 0)
  && ((ret = wchar_to_utf8_no_alloc(wlpFilename, lpFilename, nSize)) == 0)) {
  err = GetLastError();
 }
 wfree(lpFilename);
 SetLastError(err);
 return ret;
}
