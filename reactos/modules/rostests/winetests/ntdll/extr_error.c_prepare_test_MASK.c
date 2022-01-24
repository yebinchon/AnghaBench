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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 void* pRtlNtStatusToDosError ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int strict ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char***) ; 

__attribute__((used)) static BOOL FUNC5(void)
{
    HMODULE ntdll;
    int argc;
    char** argv;

    ntdll = FUNC1("ntdll.dll");
    pRtlNtStatusToDosError = (void*)FUNC0(ntdll, "RtlNtStatusToDosError");
    if (!pRtlNtStatusToDosError)
    {
        FUNC3("RtlNtStatusToDosError is not available\n");
        return FALSE;
    }

    argc = FUNC4(&argv);
    strict=(argc >= 3 && FUNC2(argv[2],"strict")==0);
    return TRUE;
}