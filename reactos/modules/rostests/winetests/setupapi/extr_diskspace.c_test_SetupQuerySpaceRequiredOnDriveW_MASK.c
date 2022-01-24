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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int LONGLONG ;
typedef  int /*<<< orphan*/ * HDSKSPC ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 scalar_t__ ERROR_INVALID_DRIVE ; 
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    static const WCHAR emptyW[] = {0};

    BOOL ret;
    HDSKSPC handle;
    LONGLONG space;

    FUNC1(0xdeadbeef);
    ret = FUNC4(NULL, NULL, NULL, NULL, 0);
    if (!ret && FUNC0() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        FUNC6("SetupQuerySpaceRequiredOnDriveW is not available\n");
        return;
    }
    FUNC5(!ret, "Expected SetupQuerySpaceRequiredOnDriveW to return FALSE, got %d\n", ret);
    FUNC5(FUNC0() == ERROR_INVALID_HANDLE,
       "Expected GetLastError() to return ERROR_INVALID_HANDLE, got %u\n",
       FUNC0());

    FUNC1(0xdeadbeef);
    space = 0xdeadbeef;
    ret = FUNC4(NULL, NULL, &space, NULL, 0);
    FUNC5(!ret, "Expected SetupQuerySpaceRequiredOnDriveW to return FALSE, got %d\n", ret);
    FUNC5(space == 0xdeadbeef, "Expected output space parameter to be untouched\n");
    FUNC5(FUNC0() == ERROR_INVALID_HANDLE,
       "Expected GetLastError() to return ERROR_INVALID_HANDLE, got %u\n",
       FUNC0());

    FUNC1(0xdeadbeef);
    ret = FUNC4(NULL, emptyW, NULL, NULL, 0);
    FUNC5(!ret, "Expected SetupQuerySpaceRequiredOnDriveW to return FALSE, got %d\n", ret);
    FUNC5(FUNC0() == ERROR_INVALID_HANDLE,
       "Expected GetLastError() to return ERROR_INVALID_HANDLE, got %u\n",
       FUNC0());

    FUNC1(0xdeadbeef);
    space = 0xdeadbeef;
    ret = FUNC4(NULL, emptyW, &space, NULL, 0);
    FUNC5(!ret, "Expected SetupQuerySpaceRequiredOnDriveW to return FALSE, got %d\n", ret);
    FUNC5(space == 0xdeadbeef, "Expected output space parameter to be untouched\n");
    FUNC5(FUNC0() == ERROR_INVALID_HANDLE,
       "Expected GetLastError() to return ERROR_INVALID_HANDLE, got %u\n",
       FUNC0());

    handle = FUNC2(NULL, 0, 0);
    FUNC5(handle != NULL,
       "Expected SetupCreateDiskSpaceListA to return a valid handle, got NULL\n");

    FUNC1(0xdeadbeef);
    ret = FUNC4(handle, NULL, NULL, NULL, 0);
    FUNC5(!ret, "Expected SetupQuerySpaceRequiredOnDriveW to return FALSE, got %d\n", ret);
    FUNC5(FUNC0() == ERROR_INVALID_PARAMETER ||
       FUNC0() == ERROR_INVALID_DRIVE, /* NT4/Win2k/XP/Win2k3 */
       "Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\n",
       FUNC0());

    FUNC1(0xdeadbeef);
    space = 0xdeadbeef;
    ret = FUNC4(handle, NULL, &space, NULL, 0);
    FUNC5(!ret, "Expected SetupQuerySpaceRequiredOnDriveW to return FALSE, got %d\n", ret);
    FUNC5(space == 0xdeadbeef, "Expected output space parameter to be untouched\n");
    FUNC5(FUNC0() == ERROR_INVALID_PARAMETER ||
       FUNC0() == ERROR_INVALID_DRIVE, /* NT4/Win2k/XP/Win2k3 */
       "Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\n",
       FUNC0());

    FUNC1(0xdeadbeef);
    ret = FUNC4(handle, emptyW, NULL, NULL, 0);
    FUNC5(!ret, "Expected SetupQuerySpaceRequiredOnDriveW to return FALSE, got %d\n", ret);
    FUNC5(FUNC0() == ERROR_INVALID_DRIVE,
       "Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\n",
       FUNC0());

    FUNC1(0xdeadbeef);
    space = 0xdeadbeef;
    ret = FUNC4(handle, emptyW, &space, NULL, 0);
    FUNC5(!ret, "Expected SetupQuerySpaceRequiredOnDriveW to return FALSE, got %d\n", ret);
    FUNC5(space == 0xdeadbeef, "Expected output space parameter to be untouched\n");
    FUNC5(FUNC0() == ERROR_INVALID_DRIVE,
       "Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\n",
       FUNC0());

    FUNC5(FUNC3(handle),
       "Expected SetupDestroyDiskSpaceList to succeed\n");
}