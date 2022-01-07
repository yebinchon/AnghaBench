
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSECURITY_ATTRIBUTES ;
typedef int HANDLE ;
typedef int DWORD ;


 int CreateFileW (int ,int ,int ,int ,int ,int ,int ) ;
 int ERROR_INVALID_DATA ;
 int GetLastError () ;
 int INVALID_HANDLE_VALUE ;
 int SetLastError (int ) ;
 int wconvert (char const*) ;
 int wfree (char const*) ;
 int wlpFileName ;

__attribute__((used)) static __inline HANDLE CreateFileU(const char* lpFileName, DWORD dwDesiredAccess, DWORD dwShareMode,
           LPSECURITY_ATTRIBUTES lpSecurityAttributes, DWORD dwCreationDisposition,
           DWORD dwFlagsAndAttributes, HANDLE hTemplateFile)
{
 HANDLE ret = INVALID_HANDLE_VALUE;
 DWORD err = ERROR_INVALID_DATA;
 wconvert(lpFileName);
 ret = CreateFileW(wlpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes,
  dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);
 err = GetLastError();
 wfree(lpFileName);
 SetLastError(err);
 return ret;
}
