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
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/ * test_url ; 

__attribute__((used)) static void FUNC4(void)
{
    BOOL ret;
    DWORD cbCacheEntryInfo;

    cbCacheEntryInfo = 0;
    FUNC2(0xdeadbeef);
    ret = FUNC1(NULL, NULL, &cbCacheEntryInfo, 0);
    FUNC3(!ret, "RetrieveUrlCacheEntryFile should have failed\n");
    FUNC3(FUNC0() == ERROR_INVALID_PARAMETER, "RetrieveUrlCacheEntryFile should have set last error to ERROR_INVALID_PARAMETER instead of %d\n", FUNC0());

    if (0)
    {
        /* Crashes on Win9x, NT4 and W2K */
        FUNC2(0xdeadbeef);
        ret = FUNC1(test_url, NULL, NULL, 0);
        FUNC3(!ret, "RetrieveUrlCacheEntryFile should have failed\n");
        FUNC3(FUNC0() == ERROR_INVALID_PARAMETER, "RetrieveUrlCacheEntryFile should have set last error to ERROR_INVALID_PARAMETER instead of %d\n", FUNC0());
    }

    FUNC2(0xdeadbeef);
    cbCacheEntryInfo = 100000;
    ret = FUNC1(NULL, NULL, &cbCacheEntryInfo, 0);
    FUNC3(!ret, "RetrieveUrlCacheEntryFile should have failed\n");
    FUNC3(FUNC0() == ERROR_INVALID_PARAMETER, "RetrieveUrlCacheEntryFile should have set last error to ERROR_INVALID_PARAMETER instead of %d\n", FUNC0());
}