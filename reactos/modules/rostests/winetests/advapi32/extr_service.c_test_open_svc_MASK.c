#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_INVALID_ADDRESS ; 
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SERVICE_DOES_NOT_EXIST ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* spooler ; 

__attribute__((used)) static void FUNC9(void)
{
    SC_HANDLE scm_handle, svc_handle;
    CHAR displayname[4096];
    DWORD displaysize;

    /* All NULL (invalid access rights) */
    FUNC5(0xdeadbeef);
    svc_handle = FUNC4(NULL, NULL, 0);
    FUNC7(!svc_handle, "Expected failure\n");
    FUNC7(FUNC1() == ERROR_INVALID_HANDLE, "Expected ERROR_INVALID_HANDLE, got %d\n", FUNC1());

    /* TODO: Add some tests with invalid handles. These produce errors on Windows but crash on Wine */

    /* NULL service */
    scm_handle = FUNC3(NULL, NULL, SC_MANAGER_CONNECT);
    FUNC5(0xdeadbeef);
    svc_handle = FUNC4(scm_handle, NULL, GENERIC_READ);
    FUNC7(!svc_handle, "Expected failure\n");
    FUNC7(FUNC1() == ERROR_INVALID_ADDRESS   /* W2K, XP, W2K3, Vista */ ||
       FUNC1() == ERROR_INVALID_PARAMETER /* NT4 */,
       "Expected ERROR_INVALID_ADDRESS or ERROR_INVALID_PARAMETER, got %d\n", FUNC1());
    FUNC0(scm_handle);

    /* Nonexistent service */
    scm_handle = FUNC3(NULL, NULL, SC_MANAGER_CONNECT);
    FUNC5(0xdeadbeef);
    svc_handle = FUNC4(scm_handle, "deadbeef", GENERIC_READ);
    FUNC7(!svc_handle, "Expected failure\n");
    FUNC7(FUNC1() == ERROR_SERVICE_DOES_NOT_EXIST, "Expected ERROR_SERVICE_DOES_NOT_EXIST, got %d\n", FUNC1());
    FUNC0(scm_handle);

    /* Proper SCM handle but different access rights */
    scm_handle = FUNC3(NULL, NULL, SC_MANAGER_CONNECT);
    FUNC5(0xdeadbeef);
    svc_handle = FUNC4(scm_handle, spooler, GENERIC_WRITE);
    if (!svc_handle && (FUNC1() == ERROR_ACCESS_DENIED))
        FUNC8("Not enough rights to get a handle to the service\n");
    else
    {
        FUNC7(svc_handle != NULL, "Expected success, got error %u\n", FUNC1());
        FUNC0(svc_handle);
    }

    /* Test to show we can't open a service with the displayname */

    /* Retrieve the needed size for the buffer */
    displaysize = 0;
    FUNC2(scm_handle, spooler, NULL, &displaysize);
    /* Get the displayname */
    FUNC2(scm_handle, spooler, displayname, &displaysize);
    /* Try to open the service with this displayname, unless the displayname equals
     * the servicename as that would defeat the purpose of this test.
     */
    if (!FUNC6(spooler, displayname))
    {
        FUNC8("displayname equals servicename\n");
        FUNC0(scm_handle);
        return;
    }

    FUNC5(0xdeadbeef);
    svc_handle = FUNC4(scm_handle, displayname, GENERIC_READ);
    FUNC7(!svc_handle, "Expected failure\n");
    FUNC7(FUNC1() == ERROR_SERVICE_DOES_NOT_EXIST, "Expected ERROR_SERVICE_DOES_NOT_EXIST, got %d\n", FUNC1());
    /* Just in case */
    FUNC0(svc_handle);

    FUNC0(scm_handle);
}