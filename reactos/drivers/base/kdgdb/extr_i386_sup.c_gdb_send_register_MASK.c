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
typedef  enum reg_name { ____Placeholder_reg_name } reg_name ;
typedef  scalar_t__ ULONG_PTR ;
struct TYPE_2__ {scalar_t__ Thread; } ;
typedef  int /*<<< orphan*/ * PETHREAD ;
typedef  int /*<<< orphan*/  KDSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentContext ; 
 TYPE_1__ CurrentStateChange ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,unsigned short*) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ gdb_dbg_pid ; 
 scalar_t__ gdb_dbg_tid ; 
 int /*<<< orphan*/ * gdb_input ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,unsigned short) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int,unsigned short*) ; 

KDSTATUS
FUNC9(void)
{
    enum reg_name reg_name;
    void *ptr;
    unsigned short size;

    /* Get the GDB register name (gdb_input = "pXX") */
    reg_name = (FUNC5(gdb_input[1]) << 4) | FUNC5(gdb_input[2]);

    if (((gdb_dbg_pid == 0) && (gdb_dbg_tid == 0)) ||
            FUNC4(gdb_dbg_tid) == FUNC1((PETHREAD)(ULONG_PTR)CurrentStateChange.Thread))
    {
        /* We can get it from the context of the current exception */
        ptr = FUNC2(&CurrentContext, reg_name, &size);
    }
    else
    {
        PETHREAD DbgThread;

        DbgThread = FUNC3(gdb_dbg_pid, gdb_dbg_tid);

        if (DbgThread == NULL)
        {
            /* Thread is dead */
            return FUNC7("E03");
        }

        ptr = FUNC8(DbgThread, reg_name, &size);
    }

    if (!ptr)
    {
        /* Undefined. Let's assume 32 bit register */
        return FUNC7("xxxxxxxx");
    }
    else
    {
        FUNC0("KDDBG : Sending registers as memory.\n");
        return FUNC6(ptr, size);
    }
}