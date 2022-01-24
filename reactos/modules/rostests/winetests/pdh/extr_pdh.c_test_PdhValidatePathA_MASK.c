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

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ PDH_CSTATUS_BAD_COUNTERNAME ; 
 scalar_t__ PDH_CSTATUS_NO_COUNTER ; 
 scalar_t__ PDH_INVALID_ARGUMENT ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC2( void )
{
    PDH_STATUS ret;

    ret = FUNC0( NULL );
    FUNC1(ret == PDH_INVALID_ARGUMENT, "PdhValidatePathA failed 0x%08x\n", ret);

    ret = FUNC0( "" );
    FUNC1(ret == PDH_INVALID_ARGUMENT, "PdhValidatePathA failed 0x%08x\n", ret);

    ret = FUNC0( "\\System" );
    FUNC1(ret == PDH_CSTATUS_BAD_COUNTERNAME, "PdhValidatePathA failed 0x%08x\n", ret);

    ret = FUNC0( "System Up Time" );
    FUNC1(ret == PDH_CSTATUS_BAD_COUNTERNAME, "PdhValidatePathA failed 0x%08x\n", ret);

    ret = FUNC0( "\\System\\Nonexistent Counter" );
    FUNC1(ret == PDH_CSTATUS_NO_COUNTER, "PdhValidatePathA failed 0x%08x\n", ret);

    ret = FUNC0( "\\System\\System Up Time" );
    FUNC1(ret == ERROR_SUCCESS, "PdhValidatePathA failed 0x%08x\n", ret);
}