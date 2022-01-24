#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int HardErrorDisabled; } ;
typedef  int NTSTATUS ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 () ; 
 int STATUS_INVALID_PARAMETER_1 ; 
 int STATUS_SUCCESS ; 
 int STATUS_WAIT_1 ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int FUNC5 (int,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    DWORD oldmode;
    BOOL is_wow64;
    DWORD mode;
    NTSTATUS status;

    if (!&pRtlGetThreadErrorMode || !&pRtlSetThreadErrorMode)
    {
        FUNC6("RtlGetThreadErrorMode and/or RtlSetThreadErrorMode not available\n");
        return;
    }

    if (!&pIsWow64Process || !FUNC3(FUNC0(), &is_wow64))
        is_wow64 = FALSE;

    oldmode = FUNC4();

    status = FUNC5(0x70, &mode);
    FUNC2(status == STATUS_SUCCESS ||
       status == STATUS_WAIT_1, /* Vista */
       "RtlSetThreadErrorMode failed with error 0x%08x\n", status);
    FUNC2(mode == oldmode,
       "RtlSetThreadErrorMode returned mode 0x%x, expected 0x%x\n",
       mode, oldmode);
    FUNC2(FUNC4() == 0x70,
       "RtlGetThreadErrorMode returned 0x%x, expected 0x%x\n", mode, 0x70);
    if (!is_wow64)
    {
        FUNC2(FUNC1()->HardErrorDisabled == 0x70,
           "The TEB contains 0x%x, expected 0x%x\n",
           FUNC1()->HardErrorDisabled, 0x70);
    }

    status = FUNC5(0, &mode);
    FUNC2(status == STATUS_SUCCESS ||
       status == STATUS_WAIT_1, /* Vista */
       "RtlSetThreadErrorMode failed with error 0x%08x\n", status);
    FUNC2(mode == 0x70,
       "RtlSetThreadErrorMode returned mode 0x%x, expected 0x%x\n",
       mode, 0x70);
    FUNC2(FUNC4() == 0,
       "RtlGetThreadErrorMode returned 0x%x, expected 0x%x\n", mode, 0);
    if (!is_wow64)
    {
        FUNC2(FUNC1()->HardErrorDisabled == 0,
           "The TEB contains 0x%x, expected 0x%x\n",
           FUNC1()->HardErrorDisabled, 0);
    }

    for (mode = 1; mode; mode <<= 1)
    {
        status = FUNC5(mode, NULL);
        if (mode & 0x70)
            FUNC2(status == STATUS_SUCCESS ||
               status == STATUS_WAIT_1, /* Vista */
               "RtlSetThreadErrorMode(%x,NULL) failed with error 0x%08x\n",
               mode, status);
        else
            FUNC2(status == STATUS_INVALID_PARAMETER_1,
               "RtlSetThreadErrorMode(%x,NULL) returns 0x%08x, "
               "expected STATUS_INVALID_PARAMETER_1\n",
               mode, status);
    }

    FUNC5(oldmode, NULL);
}