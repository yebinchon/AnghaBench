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
typedef  scalar_t__ PDH_HCOUNTER ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ PDH_CSTATUS_NO_COUNTER ; 
 scalar_t__ PDH_INVALID_ARGUMENT ; 
 scalar_t__ PDH_NO_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC6( void )
{
    PDH_STATUS ret;
    PDH_HQUERY query;
    PDH_HCOUNTER counter;

    ret = FUNC2( NULL, 0, &query );
    FUNC4(ret == ERROR_SUCCESS, "PdhOpenQueryA failed 0x%08x\n", ret);

    ret = FUNC1( query );
    FUNC4(ret == PDH_NO_DATA, "PdhCollectQueryData failed 0x%08x\n", ret);

    ret = FUNC5( NULL, "\\System\\System Up Time", 0, NULL );
    FUNC4(ret == PDH_INVALID_ARGUMENT, "PdhAddEnglishCounterA failed 0x%08x\n", ret);

    ret = FUNC5( NULL, "\\System\\System Up Time", 0, &counter );
    FUNC4(ret == PDH_INVALID_ARGUMENT, "PdhAddEnglishCounterA failed 0x%08x\n", ret);

    ret = FUNC5( query, NULL, 0, &counter );
    FUNC4(ret == PDH_INVALID_ARGUMENT, "PdhAddEnglishCounterA failed 0x%08x\n", ret);

    ret = FUNC5( query, "\\System\\System Up Time", 0, NULL );
    FUNC4(ret == PDH_INVALID_ARGUMENT, "PdhAddEnglishCounterA failed 0x%08x\n", ret);

    ret = FUNC5( query, "\\System\\System Down Time", 0, &counter );
    FUNC4(ret == PDH_CSTATUS_NO_COUNTER, "PdhAddEnglishCounterA failed 0x%08x\n", ret);
    FUNC4(!counter, "PdhAddEnglishCounterA failed %p\n", counter);

    ret = FUNC5( query, "\\System\\System Up Time", 0, &counter );
    FUNC4(ret == ERROR_SUCCESS, "PdhAddEnglishCounterA failed 0x%08x\n", ret);

    ret = FUNC1( query );
    FUNC4(ret == ERROR_SUCCESS, "PdhCollectQueryData failed 0x%08x\n", ret);

    ret = FUNC3( counter );
    FUNC4(ret == ERROR_SUCCESS, "PdhRemoveCounter failed 0x%08x\n", ret);

    ret = FUNC0( query );
    FUNC4(ret == ERROR_SUCCESS, "PdhCloseQuery failed 0x%08x\n", ret);
}