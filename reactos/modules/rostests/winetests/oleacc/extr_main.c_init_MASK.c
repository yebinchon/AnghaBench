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
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 void* pGetProcessHandleFromHwnd ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static BOOL FUNC3(void)
{
    HMODULE oleacc = FUNC0("oleacc.dll");

    pGetProcessHandleFromHwnd = (void*)FUNC1(oleacc, "GetProcessHandleFromHwnd");
    if(!pGetProcessHandleFromHwnd) {
        FUNC2("GetProcessHandleFromHwnd not available\n");
        return FALSE;
    }

    return TRUE;
}