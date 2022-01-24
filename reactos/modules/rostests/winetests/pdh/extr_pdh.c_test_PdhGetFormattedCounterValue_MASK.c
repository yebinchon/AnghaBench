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
typedef  scalar_t__ PDH_STATUS ;
typedef  int /*<<< orphan*/  PDH_HQUERY ;
typedef  int /*<<< orphan*/ * PDH_HCOUNTER ;
typedef  int /*<<< orphan*/  PDH_FMT_COUNTERVALUE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int PDH_FMT_1000 ; 
 int PDH_FMT_LARGE ; 
 int PDH_FMT_NOCAP100 ; 
 int PDH_FMT_NOSCALE ; 
 scalar_t__ PDH_INVALID_ARGUMENT ; 
 scalar_t__ PDH_INVALID_HANDLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC7( void )
{
    PDH_STATUS ret;
    PDH_HQUERY query;
    PDH_HCOUNTER counter;
    PDH_FMT_COUNTERVALUE value;

    ret = FUNC4( NULL, 0, &query );
    FUNC6(ret == ERROR_SUCCESS, "PdhOpenQueryA failed 0x%08x\n", ret);

    ret = FUNC0( query, "\\System\\System Up Time", 0, &counter );
    FUNC6(ret == ERROR_SUCCESS, "PdhAddCounterA failed 0x%08x\n", ret);

    ret = FUNC3( NULL, PDH_FMT_LARGE, NULL, NULL );
    FUNC6(ret == PDH_INVALID_ARGUMENT, "PdhGetFormattedCounterValue failed 0x%08x\n", ret);

    ret = FUNC3( NULL, PDH_FMT_LARGE, NULL, &value );
    FUNC6(ret == PDH_INVALID_HANDLE, "PdhGetFormattedCounterValue failed 0x%08x\n", ret);

    ret = FUNC3( counter, PDH_FMT_LARGE, NULL, NULL );
    FUNC6(ret == PDH_INVALID_ARGUMENT, "PdhGetFormattedCounterValue failed 0x%08x\n", ret);

    ret = FUNC3( counter, PDH_FMT_LARGE, NULL, &value );
    FUNC6(ret == ERROR_SUCCESS, "PdhGetFormattedCounterValue failed 0x%08x\n", ret);

    ret = FUNC2( query );
    FUNC6(ret == ERROR_SUCCESS, "PdhCollectQueryData failed 0x%08x\n", ret);

    ret = FUNC3( counter, PDH_FMT_LARGE, NULL, &value );
    FUNC6(ret == ERROR_SUCCESS, "PdhGetFormattedCounterValue failed 0x%08x\n", ret);

    ret = FUNC3( counter, PDH_FMT_LARGE | PDH_FMT_NOSCALE, NULL, &value );
    FUNC6(ret == ERROR_SUCCESS, "PdhGetFormattedCounterValue failed 0x%08x\n", ret);

    ret = FUNC3( counter, PDH_FMT_LARGE | PDH_FMT_NOCAP100, NULL, &value );
    FUNC6(ret == ERROR_SUCCESS, "PdhGetFormattedCounterValue failed 0x%08x\n", ret);

    ret = FUNC3( counter, PDH_FMT_LARGE | PDH_FMT_1000, NULL, &value );
    FUNC6(ret == ERROR_SUCCESS, "PdhGetFormattedCounterValue failed 0x%08x\n", ret);

    ret = FUNC5( counter, 2 );
    FUNC6(ret == ERROR_SUCCESS, "PdhSetCounterScaleFactor failed 0x%08x\n", ret);

    ret = FUNC3( counter, PDH_FMT_LARGE, NULL, &value );
    FUNC6(ret == ERROR_SUCCESS, "PdhGetFormattedCounterValue failed 0x%08x\n", ret);

    ret = FUNC1( query );
    FUNC6(ret == ERROR_SUCCESS, "PdhCloseQuery failed 0x%08x\n", ret);
}