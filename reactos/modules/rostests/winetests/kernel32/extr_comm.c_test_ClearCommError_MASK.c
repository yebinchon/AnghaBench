#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ cbInQue; scalar_t__ cbOutQue; } ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_1__ COMSTAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
    HANDLE hcom;
    DWORD  errors;
    COMSTAT lpStat;

    hcom = FUNC3(FALSE);
    if (hcom == INVALID_HANDLE_VALUE) return;

    FUNC2(FUNC0(hcom, &errors, &lpStat), "ClearCommError failed\n");
    FUNC2(lpStat.cbInQue == 0, "Unexpected %d chars in InQueue\n", lpStat.cbInQue);
    FUNC2(lpStat.cbOutQue == 0, "Unexpected %d chars in OutQueue\n", lpStat.cbOutQue);
    FUNC2(errors == 0, "ClearCommErrors: Unexpected error 0x%08x\n", errors);

    FUNC1(hcom);
}