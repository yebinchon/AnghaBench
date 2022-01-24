#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ CStatus; } ;
typedef  scalar_t__ PDH_STATUS ;
typedef  TYPE_1__ PDH_RAW_COUNTER ;
typedef  int /*<<< orphan*/  PDH_HQUERY ;
typedef  int /*<<< orphan*/ * PDH_HCOUNTER ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ PDH_INVALID_ARGUMENT ; 
 scalar_t__ PDH_INVALID_HANDLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC6( void )
{
    PDH_STATUS ret;
    PDH_HQUERY query;
    PDH_HCOUNTER counter;
    PDH_RAW_COUNTER value;

    ret = FUNC4( NULL, 0, &query );
    FUNC5(ret == ERROR_SUCCESS, "PdhOpenQueryA failed 0x%08x\n", ret);

    ret = FUNC0( query, "\\System\\System Up Time", 0, &counter );
    FUNC5(ret == ERROR_SUCCESS, "PdhAddCounterA failed 0x%08x\n", ret);

    ret = FUNC3( NULL, NULL, &value );
    FUNC5(ret == PDH_INVALID_HANDLE, "PdhGetRawCounterValue failed 0x%08x\n", ret);

    ret = FUNC3( counter, NULL, NULL );
    FUNC5(ret == PDH_INVALID_ARGUMENT, "PdhGetRawCounterValue failed 0x%08x\n", ret);

    ret = FUNC3( counter, NULL, &value );
    FUNC5(ret == ERROR_SUCCESS, "PdhGetRawCounterValue failed 0x%08x\n", ret);
    FUNC5(value.CStatus == ERROR_SUCCESS, "expected ERROR_SUCCESS got %x\n", value.CStatus);

    ret = FUNC2( query );
    FUNC5(ret == ERROR_SUCCESS, "PdhCollectQueryData failed 0x%08x\n", ret);

    ret = FUNC3( counter, NULL, &value );
    FUNC5(ret == ERROR_SUCCESS, "PdhGetRawCounterValue failed 0x%08x\n", ret);
    FUNC5(value.CStatus == ERROR_SUCCESS, "expected ERROR_SUCCESS got %x\n", value.CStatus);

    ret = FUNC1( query );
    FUNC5(ret == ERROR_SUCCESS, "PdhCloseQuery failed 0x%08x\n", ret);
}