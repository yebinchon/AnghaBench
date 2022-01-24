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

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ PDH_INVALID_ARGUMENT ; 
 scalar_t__ PDH_INVALID_HANDLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC3( void )
{
    PDH_STATUS ret;
    PDH_HQUERY query;

    ret = FUNC1( NULL, 0, NULL );
    FUNC2(ret == PDH_INVALID_ARGUMENT, "PdhOpenQueryA failed 0x%08x\n", ret);

    ret = FUNC1( NULL, 0, &query );
    FUNC2(ret == ERROR_SUCCESS, "PdhOpenQueryA failed 0x%08x\n", ret);

    ret = FUNC0( NULL );
    FUNC2(ret == PDH_INVALID_HANDLE, "PdhCloseQuery failed 0x%08x\n", ret);

    ret = FUNC0( query );
    FUNC2(ret == PDH_INVALID_HANDLE, "PdhCloseQuery failed 0x%08x\n", ret);

    ret = FUNC0( query );
    FUNC2(ret == ERROR_SUCCESS, "PdhCloseQuery failed 0x%08x\n", ret);

    ret = FUNC0( query );
    FUNC2(ret == PDH_INVALID_HANDLE, "PdhCloseQuery failed 0x%08x\n", ret);
}