
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int si ;
struct TYPE_9__ {int hThread; int hProcess; int member_0; } ;
struct TYPE_8__ {int member_0; int member_2; int * member_1; } ;
struct TYPE_7__ {int cb; int dwFlags; void* hStdError; void* hStdOutput; int wShowWindow; int member_0; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ SECURITY_ATTRIBUTES ;
typedef TYPE_3__ PROCESS_INFORMATION ;
typedef void* HANDLE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int CREATE_NO_WINDOW ;
 int CloseHandle (int ) ;
 int CreatePipe (void**,void**,TYPE_2__*,scalar_t__) ;
 int CreateProcessU (int *,char const*,int *,int *,int ,int,int *,char const*,TYPE_1__*,TYPE_3__*) ;
 int GetExitCodeProcess (int ,scalar_t__*) ;
 scalar_t__ GetLastError () ;
 int INFINITE ;
 void* INVALID_HANDLE_VALUE ;
 int NORMAL_PRIORITY_CLASS ;
 scalar_t__ PeekNamedPipe (void*,int *,scalar_t__,int *,scalar_t__*,int *) ;
 scalar_t__ ReadFile (void*,char*,scalar_t__,scalar_t__*,int *) ;
 int STARTF_PREVENTPINNING ;
 int STARTF_TITLEISAPPID ;
 int STARTF_USESHOWWINDOW ;
 int STARTF_USESTDHANDLES ;
 int SW_HIDE ;
 int Sleep (int) ;
 int TRUE ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 int WindowsErrorString () ;
 int free (char*) ;
 char* malloc (int ) ;
 int safe_closehandle (void*) ;
 int uprintf (char*,...) ;

DWORD RunCommand(const char* cmd, const char* dir, BOOL log)
{
 DWORD ret, dwRead, dwAvail, dwPipeSize = 4096;
 STARTUPINFOA si = {0};
 PROCESS_INFORMATION pi = {0};
 SECURITY_ATTRIBUTES sa = { sizeof(SECURITY_ATTRIBUTES), ((void*)0), TRUE };
 HANDLE hOutputRead = INVALID_HANDLE_VALUE, hOutputWrite = INVALID_HANDLE_VALUE;
 static char* output;

 si.cb = sizeof(si);
 if (log) {


  if (!CreatePipe(&hOutputRead, &hOutputWrite, &sa, dwPipeSize)) {
   ret = GetLastError();
   uprintf("Could not set commandline pipe: %s", WindowsErrorString());
   goto out;
  }
  si.dwFlags = STARTF_USESHOWWINDOW | STARTF_USESTDHANDLES | STARTF_PREVENTPINNING | STARTF_TITLEISAPPID;
  si.wShowWindow = SW_HIDE;
  si.hStdOutput = hOutputWrite;
  si.hStdError = hOutputWrite;
 }

 if (!CreateProcessU(((void*)0), cmd, ((void*)0), ((void*)0), TRUE,
  NORMAL_PRIORITY_CLASS | CREATE_NO_WINDOW, ((void*)0), dir, &si, &pi)) {
  ret = GetLastError();
  uprintf("Unable to launch command '%s': %s", cmd, WindowsErrorString());
  goto out;
 }

 if (log) {
  while (1) {

   if (PeekNamedPipe(hOutputRead, ((void*)0), dwPipeSize, ((void*)0), &dwAvail, ((void*)0))) {
    if (dwAvail != 0) {
     output = malloc(dwAvail + 1);
     if ((output != ((void*)0)) && (ReadFile(hOutputRead, output, dwAvail, &dwRead, ((void*)0))) && (dwRead != 0)) {
      output[dwAvail] = 0;

      uprintf(output);
     }
     free(output);
    }
   }
   if (WaitForSingleObject(pi.hProcess, 0) == WAIT_OBJECT_0)
    break;
   Sleep(100);
  };
 } else {
  WaitForSingleObject(pi.hProcess, INFINITE);
 }

 if (!GetExitCodeProcess(pi.hProcess, &ret))
  ret = GetLastError();
 CloseHandle(pi.hProcess);
 CloseHandle(pi.hThread);

out:
 safe_closehandle(hOutputWrite);
 safe_closehandle(hOutputRead);
 return ret;
}
