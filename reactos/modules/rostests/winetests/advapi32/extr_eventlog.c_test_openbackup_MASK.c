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
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ ERROR_EVENTLOG_FILE_CORRUPT ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 scalar_t__ FUNC4 (char const*) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/ * FUNC6 (char*,char const*) ; 
 scalar_t__ RPC_S_INVALID_NET_ADDR ; 
 scalar_t__ RPC_S_SERVER_UNAVAILABLE ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    HANDLE handle, handle2, file;
    DWORD written;
    const char backup[] = "backup.evt";
    const char text[] = "Just some text";

    FUNC7(0xdeadbeef);
    handle = FUNC6(NULL, NULL);
    FUNC10(handle == NULL, "Didn't expect a handle\n");
    FUNC10(FUNC5() == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC5());

    FUNC7(0xdeadbeef);
    handle = FUNC6(NULL, "idontexist.evt");
    FUNC10(handle == NULL, "Didn't expect a handle\n");
    FUNC10(FUNC5() == ERROR_FILE_NOT_FOUND, "Expected ERROR_FILE_NOT_FOUND, got %d\n", FUNC5());

    FUNC7(0xdeadbeef);
    handle = FUNC6("IDontExist", NULL);
    FUNC10(handle == NULL, "Didn't expect a handle\n");
    FUNC10(FUNC5() == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC5());

    FUNC7(0xdeadbeef);
    handle = FUNC6("IDontExist", "idontexist.evt");
    FUNC10(handle == NULL, "Didn't expect a handle\n");
    FUNC10(FUNC5() == RPC_S_SERVER_UNAVAILABLE ||
       FUNC5() == RPC_S_INVALID_NET_ADDR, /* Some Vista and Win7 */
       "Expected RPC_S_SERVER_UNAVAILABLE, got %d\n", FUNC5());

    /* Make a backup eventlog to work with */
    if (FUNC9(backup))
    {
        /* FIXME: Wine stops here */
        if (FUNC4(backup) == INVALID_FILE_ATTRIBUTES)
        {
            FUNC11("We don't have a backup eventlog to work with\n");
            return;
        }

        FUNC7(0xdeadbeef);
        handle = FUNC6("IDontExist", backup);
        FUNC10(handle == NULL, "Didn't expect a handle\n");
        FUNC10(FUNC5() == RPC_S_SERVER_UNAVAILABLE ||
           FUNC5() == RPC_S_INVALID_NET_ADDR, /* Some Vista and Win7 */
           "Expected RPC_S_SERVER_UNAVAILABLE, got %d\n", FUNC5());

        /* Empty servername should be read as local server */
        handle = FUNC6("", backup);
        FUNC10(handle != NULL, "Expected a handle\n");
        FUNC0(handle);

        handle = FUNC6(NULL, backup);
        FUNC10(handle != NULL, "Expected a handle\n");

        /* Can we open that same backup eventlog more than once? */
        handle2 = FUNC6(NULL, backup);
        FUNC10(handle2 != NULL, "Expected a handle\n");
        FUNC10(handle2 != handle, "Didn't expect the same handle\n");
        FUNC0(handle2);

        FUNC0(handle);
        FUNC3(backup);
    }

    /* Is there any content checking done? */
    file = FUNC2(backup, GENERIC_WRITE, 0, NULL, CREATE_NEW, 0, NULL);
    FUNC1(file);
    FUNC7(0xdeadbeef);
    handle = FUNC6(NULL, backup);
    FUNC10(handle == NULL, "Didn't expect a handle\n");
    FUNC10(FUNC5() == ERROR_NOT_ENOUGH_MEMORY ||
       FUNC5() == ERROR_EVENTLOG_FILE_CORRUPT, /* Vista and Win7 */
       "Expected ERROR_NOT_ENOUGH_MEMORY, got %d\n", FUNC5());
    FUNC0(handle);
    FUNC3(backup);

    file = FUNC2(backup, GENERIC_WRITE, 0, NULL, CREATE_NEW, 0, NULL);
    FUNC8(file, text, sizeof(text), &written, NULL);
    FUNC1(file);
    FUNC7(0xdeadbeef);
    handle = FUNC6(NULL, backup);
    FUNC10(handle == NULL, "Didn't expect a handle\n");
    FUNC10(FUNC5() == ERROR_EVENTLOG_FILE_CORRUPT, "Expected ERROR_EVENTLOG_FILE_CORRUPT, got %d\n", FUNC5());
    FUNC0(handle);
    FUNC3(backup);
}