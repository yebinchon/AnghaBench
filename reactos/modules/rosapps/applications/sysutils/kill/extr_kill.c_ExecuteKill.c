
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (int *) ;
 scalar_t__ FALSE ;
 int * OpenProcess (int ,scalar_t__,scalar_t__) ;
 int PROCESS_TERMINATE ;
 scalar_t__ TerminateProcess (int *,int ) ;
 scalar_t__ atol (char*) ;
 int fprintf (int ,char*,scalar_t__) ;
 int stderr ;

int
ExecuteKill(char * lpPid)
{
 HANDLE hProcess;
 DWORD dwProcessId;

 dwProcessId = (DWORD) atol(lpPid);
  fprintf( stderr, "Killing PID %ld...\n",dwProcessId);
 hProcess = OpenProcess(
   PROCESS_TERMINATE,
   FALSE,
   dwProcessId
   );
 if (((void*)0) == hProcess)
 {
  fprintf( stderr, "Could not open the process with PID = %ld\n", dwProcessId);
  return 0;
 }
 if (FALSE == TerminateProcess(
   hProcess,
   0
   )
 ) {
  fprintf( stderr, "Could not terminate the process with PID = %ld\n", dwProcessId);
  return 0;
 }
 CloseHandle(hProcess);
 return 0;
}
