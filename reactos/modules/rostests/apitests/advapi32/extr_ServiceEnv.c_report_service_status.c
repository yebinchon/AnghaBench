
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwControlsAccepted; scalar_t__ dwCheckPoint; scalar_t__ dwServiceSpecificExitCode; void* dwWaitHint; void* dwWin32ExitCode; void* dwCurrentState; int dwServiceType; } ;
typedef TYPE_1__ SERVICE_STATUS ;
typedef void* DWORD ;
typedef int BOOL ;


 int GetLastError () ;
 int SERVICE_ACCEPT_SHUTDOWN ;
 int SERVICE_ACCEPT_STOP ;
 void* SERVICE_RUNNING ;
 void* SERVICE_START_PENDING ;
 void* SERVICE_STOPPED ;
 void* SERVICE_STOP_PENDING ;
 int SERVICE_WIN32_OWN_PROCESS ;
 int SetServiceStatus (int ,TYPE_1__*) ;
 int dwCheckPoint ;
 int service_ok (int ,char*,void*,int ) ;
 int status_handle ;

__attribute__((used)) static void
report_service_status(DWORD dwCurrentState,
                      DWORD dwWin32ExitCode,
                      DWORD dwWaitHint)
{
    BOOL res;
    SERVICE_STATUS status;

    status.dwServiceType = SERVICE_WIN32_OWN_PROCESS;
    status.dwCurrentState = dwCurrentState;
    status.dwWin32ExitCode = dwWin32ExitCode;
    status.dwWaitHint = dwWaitHint;

    status.dwServiceSpecificExitCode = 0;
    status.dwCheckPoint = 0;

    if ( (dwCurrentState == SERVICE_START_PENDING) ||
         (dwCurrentState == SERVICE_STOP_PENDING) ||
         (dwCurrentState == SERVICE_STOPPED) )
    {
        status.dwControlsAccepted = 0;
    }
    else
    {
        status.dwControlsAccepted = SERVICE_ACCEPT_STOP | SERVICE_ACCEPT_SHUTDOWN;
    }
    res = SetServiceStatus(status_handle, &status);
    service_ok(res, "SetServiceStatus(%d) failed: %lu\n", dwCurrentState, GetLastError());
}
