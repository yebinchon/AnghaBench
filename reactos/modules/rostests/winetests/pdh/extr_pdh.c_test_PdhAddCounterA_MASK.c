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
typedef  int /*<<< orphan*/ * PDH_HQUERY ;
typedef  int /*<<< orphan*/ * PDH_HCOUNTER ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ PDH_CSTATUS_NO_COUNTER ; 
 scalar_t__ PDH_INVALID_ARGUMENT ; 
 scalar_t__ PDH_INVALID_HANDLE ; 
 scalar_t__ PDH_INVALID_PATH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC7( void )
{
    PDH_STATUS ret;
    PDH_HQUERY query;
    PDH_HCOUNTER counter;

    ret = FUNC3( NULL, 0, &query );
    FUNC6(ret == ERROR_SUCCESS, "PdhOpenQueryA failed 0x%08x\n", ret);

    ret = FUNC0( NULL, "\\System\\System Up Time", 0, NULL );
    FUNC6(ret == PDH_INVALID_ARGUMENT, "PdhAddCounterA failed 0x%08x\n", ret);

    ret = FUNC0( NULL, "\\System\\System Up Time", 0, &counter );
    FUNC6(ret == PDH_INVALID_HANDLE, "PdhAddCounterA failed 0x%08x\n", ret);

    ret = FUNC0( query, NULL, 0, &counter );
    FUNC6(ret == PDH_INVALID_ARGUMENT, "PdhAddCounterA failed 0x%08x\n", ret);

    ret = FUNC0( query, "\\System\\System Up Time", 0, NULL );
    FUNC6(ret == PDH_INVALID_ARGUMENT, "PdhAddCounterA failed 0x%08x\n", ret);

    ret = FUNC0( query, "\\System\\Nonexistent Counter", 0, &counter );
    FUNC6(ret == PDH_CSTATUS_NO_COUNTER ||
       FUNC5(ret == PDH_INVALID_PATH), /* Win2K */
       "PdhAddCounterA failed 0x%08x\n", ret);
    FUNC6(!counter, "PdhAddCounterA failed %p\n", counter);

    ret = FUNC0( query, "\\System\\System Up Time", 0, &counter );
    FUNC6(ret == ERROR_SUCCESS, "PdhAddCounterA failed 0x%08x\n", ret);

    ret = FUNC2( NULL );
    FUNC6(ret == PDH_INVALID_HANDLE, "PdhCollectQueryData failed 0x%08x\n", ret);

    ret = FUNC2( counter );
    FUNC6(ret == PDH_INVALID_HANDLE, "PdhCollectQueryData failed 0x%08x\n", ret);

    ret = FUNC2( query );
    FUNC6(ret == ERROR_SUCCESS, "PdhCollectQueryData failed 0x%08x\n", ret);

    ret = FUNC4( NULL );
    FUNC6(ret == PDH_INVALID_HANDLE, "PdhRemoveCounter failed 0x%08x\n", ret);

    ret = FUNC4( counter );
    FUNC6(ret == ERROR_SUCCESS, "PdhRemoveCounter failed 0x%08x\n", ret);

    ret = FUNC1( query );
    FUNC6(ret == ERROR_SUCCESS, "PdhCloseQuery failed 0x%08x\n", ret);
}