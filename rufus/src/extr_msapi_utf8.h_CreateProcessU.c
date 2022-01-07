
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int cb; int lpTitle; int lpDesktop; } ;
struct TYPE_7__ {void* lpTitle; void* lpDesktop; } ;
typedef TYPE_1__ STARTUPINFOW ;
typedef int LPVOID ;
typedef TYPE_2__* LPSTARTUPINFOA ;
typedef int LPSECURITY_ATTRIBUTES ;
typedef int LPPROCESS_INFORMATION ;
typedef int DWORD ;
typedef int BOOL ;


 int CreateProcessW (int ,int ,int ,int ,int ,int ,int ,int ,TYPE_1__*,int ) ;
 int ERROR_BAD_LENGTH ;
 int ERROR_INVALID_DATA ;
 int FALSE ;
 int GetLastError () ;
 int SetLastError (int ) ;
 int memcpy (TYPE_1__*,TYPE_2__*,int) ;
 int sfree (void*) ;
 void* utf8_to_wchar (int ) ;
 int wconvert (char const*) ;
 int wfree (char const*) ;
 int wlpApplicationName ;
 int wlpCommandLine ;
 int wlpCurrentDirectory ;

__attribute__((used)) static __inline BOOL CreateProcessU(const char* lpApplicationName, const char* lpCommandLine, LPSECURITY_ATTRIBUTES lpProcessAttributes,
         LPSECURITY_ATTRIBUTES lpThreadAttributes, BOOL bInheritHandles, DWORD dwCreationFlags,
         LPVOID lpEnvironment, const char* lpCurrentDirectory, LPSTARTUPINFOA lpStartupInfo,
         LPPROCESS_INFORMATION lpProcessInformation)
{
 BOOL ret = FALSE;
 DWORD err = ERROR_INVALID_DATA;
 STARTUPINFOW wStartupInfo;
 wconvert(lpApplicationName);
 wconvert(lpCommandLine);
 wconvert(lpCurrentDirectory);



 if (lpStartupInfo->cb != sizeof(STARTUPINFOW)) {
  err = ERROR_BAD_LENGTH; goto out;
 }
 memcpy(&wStartupInfo, lpStartupInfo, lpStartupInfo->cb);
 wStartupInfo.lpDesktop = utf8_to_wchar(lpStartupInfo->lpDesktop);
 wStartupInfo.lpTitle = utf8_to_wchar(lpStartupInfo->lpTitle);
 ret = CreateProcessW(wlpApplicationName, wlpCommandLine, lpProcessAttributes, lpThreadAttributes, bInheritHandles,
  dwCreationFlags, lpEnvironment, wlpCurrentDirectory, &wStartupInfo, lpProcessInformation);
 err = GetLastError();
 sfree(wStartupInfo.lpDesktop);
 sfree(wStartupInfo.lpTitle);
out:
 wfree(lpApplicationName);
 wfree(lpCommandLine);
 wfree(lpCurrentDirectory);
 SetLastError(err);
 return ret;
}
