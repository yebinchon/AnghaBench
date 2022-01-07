
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int ERROR_INVALID_DATA ;
 int GetFileAttributesW (int*) ;
 int GetLastError () ;
 int SetLastError (int) ;
 int wconvert (char const*) ;
 int wcslen (int*) ;
 int wfree (char const*) ;
 int* wlpFileName ;

__attribute__((used)) static __inline DWORD GetFileAttributesU(const char* lpFileName)
{
 DWORD ret = 0xFFFFFFFF, err = ERROR_INVALID_DATA;
 wconvert(lpFileName);

 if ((wlpFileName[0] == L'"') && (wlpFileName[wcslen(wlpFileName) - 1] == L'"')) {
  wlpFileName[wcslen(wlpFileName) - 1] = 0;
  ret = GetFileAttributesW(&wlpFileName[1]);
 } else {
  ret = GetFileAttributesW(wlpFileName);
 }
 err = GetLastError();
 wfree(lpFileName);
 SetLastError(err);
 return ret;
}
