
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSECURITY_ATTRIBUTES ;
typedef int DWORD ;
typedef int BOOL ;


 int CreateDirectoryW (int ,int ) ;
 int ERROR_INVALID_DATA ;
 int FALSE ;
 int GetLastError () ;
 int SetLastError (int ) ;
 int wconvert (char const*) ;
 int wfree (char const*) ;
 int wlpPathName ;

__attribute__((used)) static __inline BOOL CreateDirectoryU(const char* lpPathName, LPSECURITY_ATTRIBUTES lpSecurityAttributes)
{
 BOOL ret = FALSE;
 DWORD err = ERROR_INVALID_DATA;
 wconvert(lpPathName);
 ret = CreateDirectoryW(wlpPathName, lpSecurityAttributes);
 err = GetLastError();
 wfree(lpPathName);
 SetLastError(err);
 return ret;
}
