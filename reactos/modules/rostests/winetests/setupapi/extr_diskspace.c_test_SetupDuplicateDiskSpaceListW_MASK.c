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
typedef  int /*<<< orphan*/ * HDSKSPC ;

/* Variables and functions */
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 () ; 
 unsigned int SPDSL_IGNORE_DISK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,void*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    HDSKSPC handle, duplicate;

    FUNC1(0xdeadbeef);
    duplicate = FUNC4(NULL, NULL, 0, 0);
    if (!duplicate && FUNC0() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        FUNC7("SetupDuplicateDiskSpaceListW is not available\n");
        return;
    }
    FUNC5(!duplicate, "Expected SetupDuplicateDiskSpaceList to return NULL, got %p\n", duplicate);
    FUNC5(FUNC0() == ERROR_INVALID_HANDLE,
       "Expected GetLastError() to return ERROR_INVALID_HANDLE, got %u\n", FUNC0());

    FUNC1(0xdeadbeef);
    duplicate = FUNC4(NULL, (void *)0xdeadbeef, 0, 0);
    FUNC5(!duplicate, "Expected SetupDuplicateDiskSpaceList to return NULL, got %p\n", duplicate);
    FUNC5(FUNC0() == ERROR_INVALID_PARAMETER,
       "Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\n", FUNC0());

    FUNC1(0xdeadbeef);
    duplicate = FUNC4(NULL, NULL, 0xdeadbeef, 0);
    FUNC5(!duplicate, "Expected SetupDuplicateDiskSpaceList to return NULL, got %p\n", duplicate);
    FUNC5(FUNC0() == ERROR_INVALID_PARAMETER,
       "Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\n", FUNC0());

    FUNC1(0xdeadbeef);
    duplicate = FUNC4(NULL, NULL, 0, ~0U);
    FUNC5(!duplicate, "Expected SetupDuplicateDiskSpaceList to return NULL, got %p\n", duplicate);
    FUNC5(FUNC0() == ERROR_INVALID_PARAMETER,
       "Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\n", FUNC0());

    handle = FUNC2(NULL, 0, 0);
    FUNC5(handle != NULL,
       "Expected SetupCreateDiskSpaceListW to return a valid handle, got NULL\n");

    if (!handle)
    {
        FUNC6("Failed to create a disk space handle\n");
        return;
    }

    FUNC1(0xdeadbeef);
    duplicate = FUNC4(handle, (void *)0xdeadbeef, 0, 0);
    FUNC5(!duplicate, "Expected SetupDuplicateDiskSpaceList to return NULL, got %p\n", duplicate);
    FUNC5(FUNC0() == ERROR_INVALID_PARAMETER,
       "Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\n", FUNC0());

    FUNC1(0xdeadbeef);
    duplicate = FUNC4(handle, NULL, 0xdeadbeef, 0);
    FUNC5(!duplicate, "Expected SetupDuplicateDiskSpaceList to return NULL, got %p\n", duplicate);
    FUNC5(FUNC0() == ERROR_INVALID_PARAMETER,
       "Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\n", FUNC0());

    FUNC1(0xdeadbeef);
    duplicate = FUNC4(handle, NULL, 0, SPDSL_IGNORE_DISK);
    FUNC5(!duplicate, "Expected SetupDuplicateDiskSpaceList to return NULL, got %p\n", duplicate);
    FUNC5(FUNC0() == ERROR_INVALID_PARAMETER,
       "Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\n", FUNC0());

    FUNC1(0xdeadbeef);
    duplicate = FUNC4(handle, NULL, 0, ~0U);
    FUNC5(!duplicate, "Expected SetupDuplicateDiskSpaceList to return NULL, got %p\n", duplicate);
    FUNC5(FUNC0() == ERROR_INVALID_PARAMETER,
       "Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\n", FUNC0());

    duplicate = FUNC4(handle, NULL, 0, 0);
    FUNC5(duplicate != NULL, "Expected SetupDuplicateDiskSpaceList to return NULL, got %p\n", duplicate);
    FUNC5(duplicate != handle,
       "Expected new handle (%p) to be different from the old handle (%p)\n", duplicate, handle);

    FUNC5(FUNC3(duplicate), "Expected SetupDestroyDiskSpaceList to succeed\n");
    FUNC5(FUNC3(handle), "Expected SetupDestroyDiskSpaceList to succeed\n");
}