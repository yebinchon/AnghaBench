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
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC2( void )
{
    PDH_STATUS ret;

    ret = FUNC1( NULL, NULL );
    FUNC0(ret == PDH_INVALID_ARGUMENT, "PdhValidatePathExA failed 0x%08x\n", ret);

    ret = FUNC1( NULL, "" );
    FUNC0(ret == PDH_INVALID_ARGUMENT, "PdhValidatePathExA failed 0x%08x\n", ret);

    ret = FUNC1( NULL, "\\System" );
    FUNC0(ret == PDH_CSTATUS_BAD_COUNTERNAME, "PdhValidatePathExA failed 0x%08x\n", ret);

    ret = FUNC1( NULL, "System Up Time" );
    FUNC0(ret == PDH_CSTATUS_BAD_COUNTERNAME, "PdhValidatePathExA failed 0x%08x\n", ret);

    ret = FUNC1( NULL, "\\System\\System Down Time" );
    FUNC0(ret == PDH_CSTATUS_NO_COUNTER, "PdhValidatePathExA failed 0x%08x\n", ret);

    ret = FUNC1( NULL, "\\System\\System Up Time" );
    FUNC0(ret == ERROR_SUCCESS, "PdhValidatePathExA failed 0x%08x\n", ret);
}