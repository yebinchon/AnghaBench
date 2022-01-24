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
typedef  scalar_t__ ULONG_PTR ;
typedef  int /*<<< orphan*/ * PETHREAD ;
typedef  int /*<<< orphan*/  KDSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * gdb_input ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static
KDSTATUS
FUNC6(void)
{
    ULONG_PTR Pid, Tid;
    PETHREAD Thread;
    KDSTATUS Status;

#if MONOPROCESS
    Pid = 0;
    Tid = hex_to_tid(&gdb_input[1]);

    KDDBGPRINT("Checking if %p is alive.\n", Tid);

#else
    Pid = FUNC2(&gdb_input[2]);
    Tid = FUNC3(FUNC5(gdb_input, ".") + 1);

    /* We cannot use PsLookupProcessThreadByCid as we could be running at any IRQL.
     * So loop. */
    FUNC0("Checking if p%p.%p is alive.\n", Pid, Tid);
#endif

    Thread = FUNC1(Pid, Tid);

    if (Thread != NULL)
        Status = FUNC4("OK");
    else
        Status = FUNC4("E03");

    return Status;
}