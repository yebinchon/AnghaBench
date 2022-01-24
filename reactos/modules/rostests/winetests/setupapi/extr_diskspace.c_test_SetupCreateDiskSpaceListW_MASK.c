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
 int ERROR_CALL_NOT_IMPLEMENTED ; 
 int ERROR_INVALID_PARAMETER ; 
 int FUNC0 () ; 
 unsigned int SPDSL_IGNORE_DISK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (void*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    HDSKSPC ret;

    ret = FUNC2(NULL, 0, 0);
    if (!ret && FUNC0() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        FUNC6("SetupCreateDiskSpaceListW is not implemented\n");
        return;
    }
    FUNC5(ret != NULL,
       "Expected SetupCreateDiskSpaceListW to return a valid handle, got NULL\n");

    FUNC5(FUNC3(ret), "Expected SetupDestroyDiskSpaceList to succeed\n");

    ret = FUNC2(NULL, 0, SPDSL_IGNORE_DISK);
    FUNC5(ret != NULL,
       "Expected SetupCreateDiskSpaceListW to return a valid handle, got NULL\n");

    FUNC5(FUNC3(ret), "Expected SetupDestroyDiskSpaceList to succeed\n");

    FUNC1(0xdeadbeef);
    ret = FUNC2(NULL, 0, ~0U);
    FUNC5(ret == NULL ||
       FUNC4(ret != NULL), /* NT4/Win2k */
       "Expected SetupCreateDiskSpaceListW to return NULL, got %p\n", ret);
    if (!ret)
        FUNC5(FUNC0() == ERROR_INVALID_PARAMETER,
           "Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\n",
           FUNC0());
    else
        FUNC5(FUNC3(ret), "Expected SetupDestroyDiskSpaceList to succeed\n");

    FUNC1(0xdeadbeef);
    ret = FUNC2(NULL, 0xdeadbeef, 0);
    FUNC5(ret == NULL,
       "Expected SetupCreateDiskSpaceListW to return NULL, got %p\n", ret);
    FUNC5(FUNC0() == ERROR_INVALID_PARAMETER ||
       FUNC4(FUNC0() == 0xdeadbeef), /* NT4/Win2k */
       "Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\n",
       FUNC0());

    FUNC1(0xdeadbeef);
    ret = FUNC2((void *)0xdeadbeef, 0, 0);
    FUNC5(ret == NULL,
       "Expected SetupCreateDiskSpaceListW to return NULL, got %p\n", ret);
    FUNC5(FUNC0() == ERROR_INVALID_PARAMETER ||
       FUNC4(FUNC0() == 0xdeadbeef), /* NT4/Win2k */
       "Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\n",
       FUNC0());

    FUNC1(0xdeadbeef);
    ret = FUNC2((void *)0xdeadbeef, 0xdeadbeef, 0);
    FUNC5(ret == NULL,
       "Expected SetupCreateDiskSpaceListW to return NULL, got %p\n", ret);
    FUNC5(FUNC0() == ERROR_INVALID_PARAMETER ||
       FUNC4(FUNC0() == 0xdeadbeef), /* NT4/Win2k */
       "Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\n",
       FUNC0());
}