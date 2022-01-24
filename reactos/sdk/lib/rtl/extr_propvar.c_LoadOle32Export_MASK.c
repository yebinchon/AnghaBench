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
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  ANSI_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Old32Dll ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

PVOID
FUNC5(PVOID * BaseAddress, const PCHAR ProcedureName)
{
    NTSTATUS Status;
    ANSI_STRING ExportName;
    PVOID ProcedureAddress;

    /* First load ole32.dll */
    Status = FUNC1(NULL, NULL, &Old32Dll, BaseAddress);
    if (!FUNC2(Status))
    {
        FUNC4(Status);
    }

    FUNC3(&ExportName, ProcedureName);

    /* Look for the procedure */
    Status = FUNC0(*BaseAddress, &ExportName,
                                    0, &ProcedureAddress);
    if (!FUNC2(Status))
    {
        FUNC4(Status);
    }

    /* Return its address */
    return ProcedureAddress;
}