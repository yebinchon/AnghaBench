
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BOOL ;


 int ERROR_INVALID_DATA ;
 int FALSE ;
 int GetLastError () ;
 int SetFileAttributesW (int*,int ) ;
 int SetLastError (int ) ;
 int wconvert (char const*) ;
 int wcslen (int*) ;
 int wfree (char const*) ;
 int* wlpFileName ;

__attribute__((used)) static __inline BOOL SetFileAttributesU(const char* lpFileName, DWORD dwFileAttributes)
{
 BOOL ret = FALSE, err = ERROR_INVALID_DATA;
 wconvert(lpFileName);

 if ((wlpFileName[0] == L'"') && (wlpFileName[wcslen(wlpFileName) - 1] == L'"')) {
  wlpFileName[wcslen(wlpFileName) - 1] = 0;
  ret = SetFileAttributesW(&wlpFileName[1], dwFileAttributes);
 } else {
  ret = SetFileAttributesW(wlpFileName, dwFileAttributes);
 }
 err = GetLastError();
 wfree(lpFileName);
 SetLastError(err);
 return ret;
}
