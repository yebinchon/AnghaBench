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
typedef  int /*<<< orphan*/  PDH_HCOUNTER ;
typedef  int /*<<< orphan*/  LONGLONG ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ PDH_INVALID_ARGUMENT ; 
 scalar_t__ PDH_INVALID_HANDLE ; 
 scalar_t__ PDH_NO_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6( void )
{
    PDH_STATUS ret;
    PDH_HQUERY query;
    PDH_HCOUNTER counter;
    LONGLONG time;

    ret = FUNC3( NULL, 0, &query );
    FUNC4(ret == ERROR_SUCCESS, "PdhOpenQueryA failed 0x%08x\n", ret);

    ret = FUNC2( query );
    FUNC4(ret == PDH_NO_DATA, "PdhCollectQueryData failed 0x%08x\n", ret);

    ret = FUNC0( query, "\\System\\System Up Time", 0, &counter );
    FUNC4(ret == ERROR_SUCCESS, "PdhAddCounterA failed 0x%08x\n", ret);

    ret = FUNC5( NULL, NULL );
    FUNC4(ret == PDH_INVALID_ARGUMENT, "PdhCollectQueryDataWithTime failed 0x%08x\n", ret);

    ret = FUNC5( query, NULL );
    FUNC4(ret == PDH_INVALID_ARGUMENT, "PdhCollectQueryDataWithTime failed 0x%08x\n", ret);

    ret = FUNC5( NULL, &time );
    FUNC4(ret == PDH_INVALID_HANDLE, "PdhCollectQueryDataWithTime failed 0x%08x\n", ret);

    ret = FUNC5( query, &time );
    FUNC4(ret == ERROR_SUCCESS, "PdhCollectQueryDataWithTime failed 0x%08x\n", ret);

    ret = FUNC1( query );
    FUNC4(ret == ERROR_SUCCESS, "PdhCloseQuery failed 0x%08x\n", ret);
}