
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INVALID_DATA ;
 scalar_t__ GetFullPathNameW (int ,scalar_t__,int ,int **) ;
 scalar_t__ GetLastError () ;
 int SetLastError (scalar_t__) ;
 int walloc (char*,scalar_t__) ;
 scalar_t__ wchar_to_utf8_no_alloc (int ,char*,scalar_t__) ;
 int wconvert (char const*) ;
 int wfree (char const*) ;
 int wlpBuffer ;
 int wlpFileName ;

__attribute__((used)) static __inline DWORD GetFullPathNameU(const char* lpFileName, DWORD nBufferLength, char* lpBuffer, char** lpFilePart)
{
 DWORD ret = 0, err = ERROR_INVALID_DATA;
 wchar_t* wlpFilePart;
 wconvert(lpFileName);

 walloc(lpBuffer, nBufferLength);


 if (lpFilePart != ((void*)0)) goto out;

 ret = GetFullPathNameW(wlpFileName, nBufferLength, wlpBuffer, &wlpFilePart);
 err = GetLastError();
 if ((ret != 0) && ((ret = wchar_to_utf8_no_alloc(wlpBuffer, lpBuffer, nBufferLength)) == 0)) {
  err = GetLastError();
 }

out:
 wfree(lpBuffer);
 wfree(lpFileName);
 SetLastError(err);
 return ret;
}
