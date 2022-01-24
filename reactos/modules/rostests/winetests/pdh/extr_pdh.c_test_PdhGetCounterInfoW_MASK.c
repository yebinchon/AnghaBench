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
typedef  int /*<<< orphan*/  info ;
struct TYPE_3__ {int lScale; } ;
typedef  int PDH_STATUS ;
typedef  int /*<<< orphan*/  PDH_HQUERY ;
typedef  int /*<<< orphan*/ * PDH_HCOUNTER ;
typedef  TYPE_1__ PDH_COUNTER_INFO_W ;
typedef  int DWORD ;

/* Variables and functions */
 int ERROR_SUCCESS ; 
 int PDH_INVALID_ARGUMENT ; 
 int PDH_INVALID_HANDLE ; 
 int PDH_MORE_DATA ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  percentage_processor_time ; 

__attribute__((used)) static void FUNC6( void )
{
    PDH_STATUS ret;
    PDH_HQUERY query;
    PDH_HCOUNTER counter;
    PDH_COUNTER_INFO_W info;
    DWORD size;

    ret = FUNC3( NULL, 0, &query );
    FUNC5(ret == ERROR_SUCCESS, "PdhOpenQueryW failed 0x%08x\n", ret);

    ret = FUNC0( query, percentage_processor_time, 0, &counter );
    FUNC5(ret == ERROR_SUCCESS, "PdhAddCounterW failed 0x%08x\n", ret);

    ret = FUNC2( NULL, 0, NULL, NULL );
    FUNC5(ret == PDH_INVALID_HANDLE || ret == PDH_INVALID_ARGUMENT, "PdhGetCounterInfoW failed 0x%08x\n", ret);

    ret = FUNC2( counter, 0, NULL, NULL );
    FUNC5(ret == PDH_INVALID_ARGUMENT, "PdhGetCounterInfoW failed 0x%08x\n", ret);

    ret = FUNC2( counter, 0, NULL, &info );
    FUNC5(ret == PDH_INVALID_ARGUMENT, "PdhGetCounterInfoW failed 0x%08x\n", ret);

    size = sizeof(info) - 1;
    ret = FUNC2( counter, 0, &size, NULL );
    FUNC5(ret == PDH_MORE_DATA || ret == PDH_INVALID_ARGUMENT, "PdhGetCounterInfoW failed 0x%08x\n", ret);

    size = sizeof(info);
    ret = FUNC2( counter, 0, &size, &info );
    FUNC5(ret == ERROR_SUCCESS, "PdhGetCounterInfoW failed 0x%08x\n", ret);
    FUNC5(size == sizeof(info), "PdhGetCounterInfoW failed %d\n", size);

    ret = FUNC2( counter, 0, &size, &info );
    FUNC5(ret == ERROR_SUCCESS, "PdhGetCounterInfoW failed 0x%08x\n", ret);
    FUNC5(info.lScale == 0, "lScale %d\n", info.lScale);

    ret = FUNC4( counter, 0 );
    FUNC5(ret == ERROR_SUCCESS, "PdhSetCounterScaleFactor failed 0x%08x\n", ret);

    ret = FUNC2( counter, 0, &size, &info );
    FUNC5(ret == ERROR_SUCCESS, "PdhGetCounterInfoW failed 0x%08x\n", ret);
    FUNC5(info.lScale == 0, "lScale %d\n", info.lScale);

    ret = FUNC4( counter, -5 );
    FUNC5(ret == ERROR_SUCCESS, "PdhSetCounterScaleFactor failed 0x%08x\n", ret);

    ret = FUNC2( counter, 0, &size, &info );
    FUNC5(ret == ERROR_SUCCESS, "PdhGetCounterInfoW failed 0x%08x\n", ret);
    FUNC5(info.lScale == -5, "lScale %d\n", info.lScale);

    ret = FUNC1( query );
    FUNC5(ret == ERROR_SUCCESS, "PdhCloseQuery failed 0x%08x\n", ret);
}