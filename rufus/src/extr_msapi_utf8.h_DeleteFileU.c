
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BOOL ;


 int DeleteFileW (int ) ;
 int ERROR_INVALID_DATA ;
 int FALSE ;
 int GetLastError () ;
 int SetLastError (int ) ;
 int wconvert (char const*) ;
 int wfree (char const*) ;
 int wlpFileName ;

__attribute__((used)) static __inline BOOL DeleteFileU(const char* lpFileName)
{
 BOOL ret = FALSE;
 DWORD err = ERROR_INVALID_DATA;
 wconvert(lpFileName);
 ret = DeleteFileW(wlpFileName);
 err = GetLastError();
 wfree(lpFileName);
 SetLastError(err);
 return ret;
}
