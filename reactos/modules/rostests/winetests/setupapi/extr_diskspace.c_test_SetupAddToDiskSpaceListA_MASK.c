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
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INVALID_HANDLE ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FILEOP_COPY ; 
 int /*<<< orphan*/  FILEOP_RENAME ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static void FUNC6(void)
{
    HDSKSPC handle;
    BOOL ret;

    ret = FUNC1(NULL, "C:\\some-file.dat", 0, FILEOP_COPY, 0, 0);
    FUNC5(!ret, "Expected SetupAddToDiskSpaceListA to return FALSE, got %d\n", ret);
    FUNC5(FUNC0() == ERROR_INVALID_HANDLE,
       "Expected GetLastError() to return ERROR_INVALID_HANDLE, got %u\n", FUNC0());

    handle = FUNC2(NULL, 0, 0);
    FUNC5(handle != NULL,"Expected SetupCreateDiskSpaceListA to return a valid handle\n");

    ret = FUNC1(handle, NULL, 0, FILEOP_COPY, 0, 0);
    FUNC5(ret || FUNC4(!ret) /* >= Vista */, "Expected SetupAddToDiskSpaceListA to succeed\n");

    ret = FUNC1(handle, "C:\\some-file.dat", -20, FILEOP_COPY, 0, 0);
    FUNC5(ret, "Expected SetupAddToDiskSpaceListA to succeed\n");

    ret = FUNC1(handle, "C:\\some-file.dat", 0, FILEOP_RENAME, 0, 0);
    FUNC5(!ret, "Expected SetupAddToDiskSpaceListA to return FALSE\n");
    FUNC5(FUNC0() == ERROR_INVALID_PARAMETER,
       "Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\n", FUNC0());

    ret = FUNC1(handle, NULL, 0, FILEOP_RENAME, 0, 0);
    FUNC5(ret || FUNC4(!ret) /* >= Vista */, "Expected SetupAddToDiskSpaceListA to succeed\n");

    ret = FUNC1(NULL, NULL, 0, FILEOP_RENAME, 0, 0);
    FUNC5(ret || FUNC4(!ret) /* >= Vista */, "Expected SetupAddToDiskSpaceListA to succeed\n");

    FUNC5(FUNC3(handle),
       "Expected SetupDestroyDiskSpaceList to succeed\n");
}