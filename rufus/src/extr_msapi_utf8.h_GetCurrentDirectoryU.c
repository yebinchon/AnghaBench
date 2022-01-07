
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INVALID_DATA ;
 scalar_t__ GetCurrentDirectoryW (scalar_t__,int ) ;
 scalar_t__ GetLastError () ;
 int SetLastError (scalar_t__) ;
 int walloc (char*,scalar_t__) ;
 scalar_t__ wchar_to_utf8_no_alloc (int ,char*,scalar_t__) ;
 int wfree (char*) ;
 int wlpBuffer ;

__attribute__((used)) static __inline DWORD GetCurrentDirectoryU(DWORD nBufferLength, char* lpBuffer)
{
 DWORD ret = 0, err = ERROR_INVALID_DATA;

 walloc(lpBuffer, nBufferLength);
 ret = GetCurrentDirectoryW(nBufferLength, wlpBuffer);
 err = GetLastError();
 if ((ret != 0) && ((ret = wchar_to_utf8_no_alloc(wlpBuffer, lpBuffer, nBufferLength)) == 0)) {
  err = GetLastError();
 }
 wfree(lpBuffer);
 SetLastError(err);
 return ret;
}
