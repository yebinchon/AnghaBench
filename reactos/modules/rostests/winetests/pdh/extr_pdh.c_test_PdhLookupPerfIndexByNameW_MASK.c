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
typedef  int PDH_STATUS ;
typedef  int DWORD ;

/* Variables and functions */
 int ERROR_SUCCESS ; 
 int PDH_INVALID_ARGUMENT ; 
 int PDH_STRING_NOT_FOUND ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 char const* processor_time ; 
 char const* uptime ; 

__attribute__((used)) static void FUNC2( void )
{
    PDH_STATUS ret;
    DWORD index;

    static const WCHAR no_counter[] = {'N','o',' ','C','o','u','n','t','e','r',0};

    ret = FUNC0( NULL, NULL, NULL );
    FUNC1(ret == PDH_INVALID_ARGUMENT, "PdhLookupPerfIndexByNameW failed 0x%08x\n", ret);

    ret = FUNC0( NULL, NULL, &index );
    FUNC1(ret == PDH_INVALID_ARGUMENT, "PdhLookupPerfIndexByNameW failed 0x%08x\n", ret);

    ret = FUNC0( NULL, no_counter, &index );
    FUNC1(ret == PDH_STRING_NOT_FOUND, "PdhLookupPerfIndexByNameW failed 0x%08x\n", ret);

    ret = FUNC0( NULL, processor_time, NULL );
    FUNC1(ret == PDH_INVALID_ARGUMENT, "PdhLookupPerfIndexByNameW failed 0x%08x\n", ret);

    ret = FUNC0( NULL, processor_time, &index );
    FUNC1(ret == ERROR_SUCCESS, "PdhLookupPerfIndexByNameW failed 0x%08x\n", ret);
    FUNC1(index == 6, "PdhLookupPerfIndexByNameW failed %d\n", index);

    ret = FUNC0( NULL, uptime, &index );
    FUNC1(ret == ERROR_SUCCESS, "PdhLookupPerfIndexByNameW failed 0x%08x\n", ret);
    FUNC1(index == 674, "PdhLookupPerfIndexByNameW failed %d\n", index);
}