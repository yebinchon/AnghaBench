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
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SERVICE_EXISTS ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    DWORD ret;
    DWORD dwNegotiatedVersion;
    HANDLE hClientHandle;

    /* correct call to determine if WlanSvc is running */
    ret = FUNC2(1, NULL, &dwNegotiatedVersion, &hClientHandle);
    if (ret == ERROR_SERVICE_EXISTS)
    {
        FUNC4("Skipping wlanapi tests, WlanSvc is not running\n");
        return;
    }
    FUNC3(ret == ERROR_SUCCESS, "WlanOpenHandle failed, error %ld\n", ret);
    FUNC1(hClientHandle, NULL);

    /* invalid pdwNegotiatedVersion */
    ret = FUNC2(1, NULL, NULL, &hClientHandle);
    FUNC3(ret == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %ld\n", FUNC0());

    /* invalid hClientHandle */
    ret = FUNC2(1, NULL, &dwNegotiatedVersion, NULL);
    FUNC3(ret == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %ld\n", FUNC0());

    /* invalid pReserved */
    ret = FUNC2(1, (PVOID) 1, &dwNegotiatedVersion, &hClientHandle);
    FUNC3(ret == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %ld\n", FUNC0());
}