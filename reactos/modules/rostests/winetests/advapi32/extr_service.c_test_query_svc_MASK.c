#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ dwCurrentState; scalar_t__ dwProcessId; } ;
typedef  TYPE_1__ SERVICE_STATUS_PROCESS ;
typedef  int /*<<< orphan*/  SERVICE_STATUS ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ERROR_ACCESS_DENIED ; 
 int ERROR_INSUFFICIENT_BUFFER ; 
 int ERROR_INVALID_ADDRESS ; 
 int ERROR_INVALID_HANDLE ; 
 int ERROR_INVALID_LEVEL ; 
 int ERROR_INVALID_PARAMETER ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int SC_STATUS_PROCESS_INFO ; 
 int /*<<< orphan*/  SERVICE_QUERY_STATUS ; 
 scalar_t__ SERVICE_RUNNING ; 
 int /*<<< orphan*/  STANDARD_RIGHTS_READ ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  spooler ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(void)
{
    SC_HANDLE scm_handle, svc_handle;
    BOOL ret;
    SERVICE_STATUS status;
    SERVICE_STATUS_PROCESS *statusproc;
    DWORD bufsize, needed;

    /* All NULL or wrong  */
    FUNC8(0xdeadbeef);
    ret = FUNC7(NULL, NULL);
    FUNC10(!ret, "Expected failure\n");
    FUNC10(FUNC1() == ERROR_INVALID_HANDLE,
       "Expected ERROR_INVALID_HANDLE, got %d\n", FUNC1());

    scm_handle = FUNC5(NULL, NULL, SC_MANAGER_CONNECT);

    /* Check if 'Spooler' exists.
     * Open with not enough rights to query the status.
     */
    svc_handle = FUNC6(scm_handle, spooler, STANDARD_RIGHTS_READ);
    if (!svc_handle)
    {
        FUNC12("Spooler service doesn't exist\n");
        FUNC0(scm_handle);
        return;
    }

    FUNC8(0xdeadbeef);
    ret = FUNC7(svc_handle, NULL);
    FUNC10(!ret, "Expected failure\n");
    FUNC10(FUNC1() == ERROR_INVALID_ADDRESS ||
       FUNC1() == ERROR_INVALID_PARAMETER /* NT4 */,
       "Unexpected last error %d\n", FUNC1());

    FUNC8(0xdeadbeef);
    ret = FUNC7(svc_handle, &status);
    FUNC10(!ret, "Expected failure\n");
    FUNC10(FUNC1() == ERROR_ACCESS_DENIED,
       "Expected ERROR_ACCESS_DENIED, got %d\n", FUNC1());

    /* Open the service with just enough rights.
     * (Verified with 'SERVICE_ALL_ACCESS &~ SERVICE_QUERY_STATUS')
     */
    FUNC0(svc_handle);
    svc_handle = FUNC6(scm_handle, spooler, SERVICE_QUERY_STATUS);

    FUNC8(0xdeadbeef);
    ret = FUNC7(svc_handle, &status);
    FUNC10(ret, "Expected success, got error %u\n", FUNC1());

    FUNC0(svc_handle);

    /* More or less the same tests for QueryServiceStatusEx */
    if (!&pQueryServiceStatusEx)
    {
        FUNC13( "QueryServiceStatusEx not available\n" );
        FUNC0(scm_handle);
        return;
    }

    /* Open service with not enough rights to query the status */
    svc_handle = FUNC6(scm_handle, spooler, STANDARD_RIGHTS_READ);

    /* All NULL or wrong, this proves that info level is checked first */
    FUNC8(0xdeadbeef);
    ret = FUNC11(NULL, 1, NULL, 0, NULL);
    FUNC10(!ret, "Expected failure\n");
    FUNC10(FUNC1() == ERROR_INVALID_LEVEL,
       "Expected ERROR_INVALID_LEVEL, got %d\n", FUNC1());

    /* Passing a NULL parameter for the needed buffer size
     * will crash on anything but NT4.
     */

    /* Only info level is correct. It looks like the buffer/size is checked second */
    FUNC8(0xdeadbeef);
    ret = FUNC11(NULL, SC_STATUS_PROCESS_INFO, NULL, 0, &needed);
    /* NT4 checks the handle first */
    if (FUNC1() != ERROR_INVALID_HANDLE)
    {
        FUNC10(!ret, "Expected failure\n");
        FUNC10(needed == sizeof(SERVICE_STATUS_PROCESS),
           "Needed buffersize is wrong : %d\n", needed);
        FUNC10(FUNC1() == ERROR_INSUFFICIENT_BUFFER,
           "Expected ERROR_INSUFFICIENT_BUFFER, got %d\n", FUNC1());
    }

    /* Pass a correct buffer and buffersize but a NULL handle */
    statusproc = FUNC3(FUNC2(), 0, sizeof(SERVICE_STATUS_PROCESS));
    bufsize = needed;
    FUNC8(0xdeadbeef);
    ret = FUNC11(NULL, SC_STATUS_PROCESS_INFO, (BYTE*)statusproc, bufsize, &needed);
    FUNC10(!ret, "Expected failure\n");
    FUNC10(FUNC1() == ERROR_INVALID_HANDLE,
       "Expected ERROR_INVALID_HANDLE, got %d\n", FUNC1());
    FUNC4(FUNC2(), 0, statusproc);

    /* Correct handle and info level */
    FUNC8(0xdeadbeef);
    ret = FUNC11(svc_handle, SC_STATUS_PROCESS_INFO, NULL, 0, &needed);
    /* NT4 doesn't return the needed size */
    if (FUNC1() != ERROR_INVALID_PARAMETER)
    {
        FUNC10(!ret, "Expected failure\n");
        FUNC10(needed == sizeof(SERVICE_STATUS_PROCESS),
           "Needed buffersize is wrong : %d\n", needed);
        FUNC10(FUNC1() == ERROR_INSUFFICIENT_BUFFER,
           "Expected ERROR_INSUFFICIENT_BUFFER, got %d\n", FUNC1());
    }

    /* All parameters are OK but we don't have enough rights */
    statusproc = FUNC3(FUNC2(), 0, sizeof(SERVICE_STATUS_PROCESS));
    bufsize = sizeof(SERVICE_STATUS_PROCESS);
    FUNC8(0xdeadbeef);
    ret = FUNC11(svc_handle, SC_STATUS_PROCESS_INFO, (BYTE*)statusproc, bufsize, &needed);
    FUNC10(!ret, "Expected failure\n");
    FUNC10(FUNC1() == ERROR_ACCESS_DENIED,
       "Expected ERROR_ACCESS_DENIED, got %d\n", FUNC1());
    FUNC4(FUNC2(), 0, statusproc);

    /* Open the service with just enough rights. */
    FUNC0(svc_handle);
    svc_handle = FUNC6(scm_handle, spooler, SERVICE_QUERY_STATUS);

    /* Everything should be fine now. */
    statusproc = FUNC3(FUNC2(), 0, sizeof(SERVICE_STATUS_PROCESS));
    bufsize = sizeof(SERVICE_STATUS_PROCESS);
    FUNC8(0xdeadbeef);
    ret = FUNC11(svc_handle, SC_STATUS_PROCESS_INFO, (BYTE*)statusproc, bufsize, &needed);
    FUNC10(ret, "Expected success, got error %u\n", FUNC1());
    if (statusproc->dwCurrentState == SERVICE_RUNNING)
        FUNC10(statusproc->dwProcessId != 0,
           "Expect a process id for this running service\n");
    else
        FUNC10(statusproc->dwProcessId == 0,
           "Expect no process id for this stopped service\n");

    /* same call with null needed pointer */
    FUNC8(0xdeadbeef);
    ret = FUNC11(svc_handle, SC_STATUS_PROCESS_INFO, (BYTE*)statusproc, bufsize, NULL);
    FUNC10(!ret, "Expected failure\n");
    FUNC10(FUNC9(FUNC1() == ERROR_INVALID_PARAMETER) /* NT4 */ ||
       FUNC1() == ERROR_INVALID_ADDRESS, "got %d\n", FUNC1());

    FUNC4(FUNC2(), 0, statusproc);

    FUNC0(svc_handle);
    FUNC0(scm_handle);
}