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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ PDH_STATUS ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ PDH_INSUFFICIENT_BUFFER ; 
 scalar_t__ PDH_INVALID_ARGUMENT ; 
 int PDH_MAX_COUNTER_NAME ; 
 scalar_t__ PDH_MORE_DATA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/ * processor_time ; 
 int /*<<< orphan*/ * uptime ; 

__attribute__((used)) static void FUNC3( void )
{
    PDH_STATUS ret;
    WCHAR buffer[PDH_MAX_COUNTER_NAME];
    DWORD size;

    ret = FUNC1( NULL, 0, NULL, NULL );
    FUNC2(ret == PDH_INVALID_ARGUMENT, "PdhLookupPerfNameByIndexW failed 0x%08x\n", ret);

    size = 0;
    ret = FUNC1( NULL, 6, buffer, &size );
    FUNC2(ret == PDH_MORE_DATA || ret == PDH_INSUFFICIENT_BUFFER, "PdhLookupPerfNameByIndexW failed 0x%08x\n", ret);

    size = FUNC0(buffer);
    ret = FUNC1( NULL, 6, buffer, &size );
    FUNC2(ret == ERROR_SUCCESS, "PdhLookupPerfNameByIndexW failed 0x%08x\n", ret);
    FUNC2(size == FUNC0(processor_time), "PdhLookupPerfNameByIndexW failed %d\n", size);

    size = FUNC0(buffer);
    ret = FUNC1( NULL, 674, NULL, &size );
    FUNC2(ret == PDH_INVALID_ARGUMENT ||
       ret == PDH_MORE_DATA, /* win2k3 */
       "PdhLookupPerfNameByIndexW failed 0x%08x\n", ret);

    size = FUNC0(buffer);
    ret = FUNC1( NULL, 674, buffer, &size );
    FUNC2(ret == ERROR_SUCCESS, "PdhLookupPerfNameByIndexW failed 0x%08x\n", ret);
    FUNC2(size == FUNC0(uptime), "PdhLookupPerfNameByIndexW failed %d\n", size);
}