
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int status ;
typedef char WCHAR ;
typedef int ULONGLONG ;
struct TYPE_2__ {scalar_t__ dwCurrentState; } ;
typedef TYPE_1__ SERVICE_STATUS_PROCESS ;
typedef int SC_HANDLE ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int CloseServiceHandle (int ) ;
 int ERR (char*) ;
 scalar_t__ ERROR_SERVICE_ALREADY_RUNNING ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int GetTickCount64 () ;
 int OpenSCManagerW (int *,int *,int ) ;
 int OpenServiceW (int ,char const*,int) ;
 int QueryServiceStatusEx (int ,int ,int *,int,int *) ;
 int SC_STATUS_PROCESS_INFO ;
 int SERVICE_QUERY_STATUS ;
 scalar_t__ SERVICE_RUNNING ;
 int SERVICE_START ;
 scalar_t__ SERVICE_START_PENDING ;
 int Sleep (int) ;
 scalar_t__ StartServiceW (int ,int ,int *) ;
 int TRACE (char*) ;
 int TRUE ;
 int WARN (char*,scalar_t__) ;

__attribute__((used)) static BOOL start_rpcss(void)
{
    static const WCHAR rpcssW[] = {'R','p','c','S','s',0};
    SC_HANDLE scm, service;
    SERVICE_STATUS_PROCESS status;
    BOOL ret = FALSE;

    TRACE("\n");

    if (!(scm = OpenSCManagerW( ((void*)0), ((void*)0), 0 )))
    {
        ERR( "failed to open service manager\n" );
        return FALSE;
    }
    if (!(service = OpenServiceW( scm, rpcssW, SERVICE_START | SERVICE_QUERY_STATUS )))
    {
        ERR( "failed to open RpcSs service\n" );
        CloseServiceHandle( scm );
        return FALSE;
    }
    if (StartServiceW( service, 0, ((void*)0) ) || GetLastError() == ERROR_SERVICE_ALREADY_RUNNING)
    {
        ULONGLONG start_time = GetTickCount64();
        do
        {
            DWORD dummy;

            if (!QueryServiceStatusEx( service, SC_STATUS_PROCESS_INFO,
                                       (BYTE *)&status, sizeof(status), &dummy ))
                break;
            if (status.dwCurrentState == SERVICE_RUNNING)
            {
                ret = TRUE;
                break;
            }
            if (GetTickCount64() - start_time > 30000) break;
            Sleep( 100 );

        } while (status.dwCurrentState == SERVICE_START_PENDING);

        if (status.dwCurrentState != SERVICE_RUNNING)
            WARN( "RpcSs failed to start %u\n", status.dwCurrentState );
    }
    else ERR( "failed to start RpcSs service\n" );

    CloseServiceHandle( service );
    CloseServiceHandle( scm );
    return ret;
}
