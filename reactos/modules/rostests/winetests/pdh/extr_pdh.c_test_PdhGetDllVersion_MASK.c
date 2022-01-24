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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ PDH_CVERSION_WIN50 ; 
 scalar_t__ PDH_INVALID_ARGUMENT ; 
 scalar_t__ PDH_VERSION ; 
 scalar_t__ FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(void)
{
    PDH_STATUS ret;
    DWORD version;

    ret = FUNC0(NULL);
    FUNC2(ret == PDH_INVALID_ARGUMENT ||
       FUNC1(ret == ERROR_SUCCESS), /* Vista+ */
       "Expected PdhGetDllVersion to return PDH_INVALID_ARGUMENT, got %d\n", ret);

    ret = FUNC0(&version);
    FUNC2(ret == ERROR_SUCCESS,
       "Expected PdhGetDllVersion to return ERROR_SUCCESS, got %d\n", ret);

    if (ret == ERROR_SUCCESS)
    {
        FUNC2(version == PDH_CVERSION_WIN50 ||
           version == PDH_VERSION,
           "Expected version number to be PDH_CVERSION_WIN50 or PDH_VERSION, got %u\n", version);
    }
}