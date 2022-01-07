
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int cbSize; int hProcess; int hInstApp; int lpClass; int lpDirectory; int lpParameters; int lpFile; int lpVerb; } ;
struct TYPE_7__ {int fMask; int * lpClass; int * lpDirectory; int * lpParameters; int * lpFile; int * lpVerb; int hProcess; int hInstApp; } ;
typedef TYPE_1__ SHELLEXECUTEINFOW ;
typedef TYPE_2__ SHELLEXECUTEINFOA ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_BAD_LENGTH ;
 int ERROR_INVALID_DATA ;
 int FALSE ;
 int GetLastError () ;
 int SEE_MASK_CLASSNAME ;
 int SetLastError (int ) ;
 int ShellExecuteExW (TYPE_1__*) ;
 int memcpy (TYPE_1__*,TYPE_2__*,int) ;
 int sfree (int *) ;
 void* utf8_to_wchar (int ) ;

__attribute__((used)) static __inline BOOL ShellExecuteExU(SHELLEXECUTEINFOA* lpExecInfo)
{
 BOOL ret = FALSE;
 DWORD err = ERROR_INVALID_DATA;
 SHELLEXECUTEINFOW wExecInfo;


 if (lpExecInfo->cbSize != sizeof(SHELLEXECUTEINFOW)) {
  SetLastError(ERROR_BAD_LENGTH); return FALSE;
 }
 memcpy(&wExecInfo, lpExecInfo, lpExecInfo->cbSize);
 wExecInfo.lpVerb = utf8_to_wchar(lpExecInfo->lpVerb);
 wExecInfo.lpFile = utf8_to_wchar(lpExecInfo->lpFile);
 wExecInfo.lpParameters = utf8_to_wchar(lpExecInfo->lpParameters);
 wExecInfo.lpDirectory = utf8_to_wchar(lpExecInfo->lpDirectory);
 if (wExecInfo.fMask & SEE_MASK_CLASSNAME) {
  wExecInfo.lpClass = utf8_to_wchar(lpExecInfo->lpClass);
 } else {
  wExecInfo.lpClass = ((void*)0);
 }
 ret = ShellExecuteExW(&wExecInfo);
 err = GetLastError();

 lpExecInfo->hInstApp = wExecInfo.hInstApp;
 lpExecInfo->hProcess = wExecInfo.hProcess;
 sfree(wExecInfo.lpVerb);
 sfree(wExecInfo.lpFile);
 sfree(wExecInfo.lpParameters);
 sfree(wExecInfo.lpDirectory);
 sfree(wExecInfo.lpClass);
 SetLastError(err);
 return ret;
}
