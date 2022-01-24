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
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ NET_API_STATUS ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 int FUNC0 () ; 
 scalar_t__ NERR_Success ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void FUNC7(void)
{
    VOID *p;
    DWORD dwSize;
    NET_API_STATUS res;

    /* test normal logic */
    FUNC2(FUNC3(1024, &p) == NERR_Success,
       "Reserved memory\n");
    FUNC2(FUNC6(p, &dwSize) == NERR_Success, "Got size\n");
    FUNC2(dwSize >= 1024, "The size is correct\n");

    FUNC2(FUNC5(p, 1500, &p) == NERR_Success,
       "Reallocated\n");
    FUNC2(FUNC6(p, &dwSize) == NERR_Success, "Got size\n");
    FUNC2(dwSize >= 1500, "The size is correct\n");

    FUNC2(FUNC4(p) == NERR_Success, "Freed\n");

    FUNC2(FUNC6(NULL, &dwSize) == ERROR_INVALID_PARAMETER, "Error for NULL pointer\n");

    /* border reallocate cases */
    FUNC2(FUNC5(0, 1500, &p) == NERR_Success, "Reallocate with OldBuffer = NULL failed\n");
    FUNC2(p != NULL, "No memory got allocated\n");
    FUNC2(FUNC4(p) == NERR_Success, "NetApiBufferFree failed\n");

    FUNC2(FUNC3(1024, &p) == NERR_Success, "Memory not reserved\n");
    FUNC2(FUNC5(p, 0, &p) == NERR_Success, "Not freed\n");
    FUNC2(p == NULL, "Pointer not cleared\n");

    /* 0-length buffer */
    FUNC2(FUNC3(0, &p) == NERR_Success,
       "Reserved memory\n");
    FUNC2(FUNC6(p, &dwSize) == NERR_Success, "Got size\n");
    FUNC2(dwSize < 0xFFFFFFFF, "The size of the 0-length buffer\n");
    FUNC2(FUNC4(p) == NERR_Success, "Freed\n");

    /* NULL-Pointer */
    /* NT: ERROR_INVALID_PARAMETER, lasterror is untouched) */
    FUNC1(0xdeadbeef);
    res = FUNC3(0, NULL);
    FUNC2( (res == ERROR_INVALID_PARAMETER) && (FUNC0() == 0xdeadbeef),
        "returned %d with 0x%x (expected ERROR_INVALID_PARAMETER with "
        "0xdeadbeef)\n", res, FUNC0());

    FUNC1(0xdeadbeef);
    res = FUNC3(1024, NULL);
    FUNC2( (res == ERROR_INVALID_PARAMETER) && (FUNC0() == 0xdeadbeef),
        "returned %d with 0x%x (expected ERROR_INVALID_PARAMETER with "
        "0xdeadbeef)\n", res, FUNC0());
}