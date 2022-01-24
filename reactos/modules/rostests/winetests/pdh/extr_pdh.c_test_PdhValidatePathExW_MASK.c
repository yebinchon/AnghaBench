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
typedef  char WCHAR ;
typedef  scalar_t__ PDH_STATUS ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ PDH_CSTATUS_BAD_COUNTERNAME ; 
 scalar_t__ PDH_CSTATUS_NO_COUNTER ; 
 scalar_t__ PDH_INVALID_ARGUMENT ; 
 char const* nonexistent_counter ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 char const* system_uptime ; 
 char const* uptime ; 

__attribute__((used)) static void FUNC2( void )
{
    PDH_STATUS ret;

    static const WCHAR empty[] = {0};
    static const WCHAR system[] = {'\\','S','y','s','t','e','m',0};

    ret = FUNC1( NULL, NULL );
    FUNC0(ret == PDH_INVALID_ARGUMENT, "PdhValidatePathExW failed 0x%08x\n", ret);

    ret = FUNC1( NULL, empty );
    FUNC0(ret == PDH_INVALID_ARGUMENT, "PdhValidatePathExW failed 0x%08x\n", ret);

    ret = FUNC1( NULL, system );
    FUNC0(ret == PDH_CSTATUS_BAD_COUNTERNAME, "PdhValidatePathExW failed 0x%08x\n", ret);

    ret = FUNC1( NULL, uptime );
    FUNC0(ret == PDH_CSTATUS_BAD_COUNTERNAME, "PdhValidatePathExW failed 0x%08x\n", ret);

    ret = FUNC1( NULL, nonexistent_counter );
    FUNC0(ret == PDH_CSTATUS_NO_COUNTER, "PdhValidatePathExW failed 0x%08x\n", ret);

    ret = FUNC1( NULL, system_uptime );
    FUNC0(ret == ERROR_SUCCESS, "PdhValidatePathExW failed 0x%08x\n", ret);
}