#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  status ;
typedef  char WCHAR ;
typedef  int ULONGLONG ;
struct TYPE_2__ {scalar_t__ dwCurrentState; } ;
typedef  TYPE_1__ SERVICE_STATUS_PROCESS ;
typedef  int /*<<< orphan*/  SC_HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ ERROR_SERVICE_ALREADY_RUNNING ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SC_STATUS_PROCESS_INFO ; 
 int SERVICE_QUERY_STATUS ; 
 scalar_t__ SERVICE_RUNNING ; 
 int SERVICE_START ; 
 scalar_t__ SERVICE_START_PENDING ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC11(void)
{
    static const WCHAR rpcssW[] = {'R','p','c','S','s',0};
    SC_HANDLE scm, service;
    SERVICE_STATUS_PROCESS status;
    BOOL ret = FALSE;

    FUNC9("\n");

    if (!(scm = FUNC4( NULL, NULL, 0 )))
    {
        FUNC1( "failed to open service manager\n" );
        return FALSE;
    }
    if (!(service = FUNC5( scm, rpcssW, SERVICE_START | SERVICE_QUERY_STATUS )))
    {
        FUNC1( "failed to open RpcSs service\n" );
        FUNC0( scm );
        return FALSE;
    }
    if (FUNC8( service, 0, NULL ) || FUNC2() == ERROR_SERVICE_ALREADY_RUNNING)
    {
        ULONGLONG start_time = FUNC3();
        do
        {
            DWORD dummy;

            if (!FUNC6( service, SC_STATUS_PROCESS_INFO,
                                       (BYTE *)&status, sizeof(status), &dummy ))
                break;
            if (status.dwCurrentState == SERVICE_RUNNING)
            {
                ret = TRUE;
                break;
            }
            if (FUNC3() - start_time > 30000) break;
            FUNC7( 100 );

        } while (status.dwCurrentState == SERVICE_START_PENDING);

        if (status.dwCurrentState != SERVICE_RUNNING)
            FUNC10( "RpcSs failed to start %u\n", status.dwCurrentState );
    }
    else FUNC1( "failed to start RpcSs service\n" );

    FUNC0( service );
    FUNC0( scm );
    return ret;
}