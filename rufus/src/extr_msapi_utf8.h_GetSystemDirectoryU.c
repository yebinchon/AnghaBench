
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 scalar_t__ ERROR_INVALID_DATA ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetSystemDirectoryW (int ,scalar_t__) ;
 int SetLastError (scalar_t__) ;
 int walloc (char*,scalar_t__) ;
 scalar_t__ wchar_to_utf8_no_alloc (int ,char*,scalar_t__) ;
 int wfree (char*) ;
 int wlpBuffer ;

__attribute__((used)) static __inline UINT GetSystemDirectoryU(char* lpBuffer, UINT uSize)
{
 UINT ret = 0, err = ERROR_INVALID_DATA;

 walloc(lpBuffer, uSize);
 ret = GetSystemDirectoryW(wlpBuffer, uSize);
 err = GetLastError();
 if ((ret != 0) && ((ret = wchar_to_utf8_no_alloc(wlpBuffer, lpBuffer, uSize)) == 0)) {
  err = GetLastError();
 }
 wfree(lpBuffer);
 SetLastError(err);
 return ret;
}
