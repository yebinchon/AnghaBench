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
typedef  int PDH_STATUS ;
typedef  int DWORD ;

/* Variables and functions */
 int ERROR_SUCCESS ; 
 int PDH_INVALID_ARGUMENT ; 
 int PDH_STRING_NOT_FOUND ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 

__attribute__((used)) static void FUNC2( void )
{
    PDH_STATUS ret;
    DWORD index;

    ret = FUNC0( NULL, NULL, NULL );
    FUNC1(ret == PDH_INVALID_ARGUMENT, "PdhLookupPerfIndexByNameA failed 0x%08x\n", ret);

    ret = FUNC0( NULL, NULL, &index );
    FUNC1(ret == PDH_INVALID_ARGUMENT, "PdhLookupPerfIndexByNameA failed 0x%08x\n", ret);

    ret = FUNC0( NULL, "No Counter", &index );
    FUNC1(ret == PDH_STRING_NOT_FOUND, "PdhLookupPerfIndexByNameA failed 0x%08x\n", ret);

    ret = FUNC0( NULL, "% Processor Time", NULL );
    FUNC1(ret == PDH_INVALID_ARGUMENT, "PdhLookupPerfIndexByNameA failed 0x%08x\n", ret);

    ret = FUNC0( NULL, "% Processor Time", &index );
    FUNC1(ret == ERROR_SUCCESS, "PdhLookupPerfIndexByNameA failed 0x%08x\n", ret);
    FUNC1(index == 6, "PdhLookupPerfIndexByNameA failed %d\n", index);

    ret = FUNC0( NULL, "System Up Time", &index );
    FUNC1(ret == ERROR_SUCCESS, "PdhLookupPerfIndexByNameA failed 0x%08x\n", ret);
    FUNC1(index == 674, "PdhLookupPerfIndexByNameA failed %d\n", index);
}