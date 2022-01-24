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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ hinstPython ; 

void
FUNC5()
{
    static int recurse = 0;

    /* If a crash occurs while doing this, don't try again. */
    if (recurse != 0)
	return;

    ++recurse;

#ifdef DYNAMIC_PYTHON
    if (hinstPython && Py_IsInitialized())
    {
# ifdef PY_CAN_RECURSE
	PyGILState_Ensure();
# else
	Python_RestoreThread();	    /* enter python */
# endif
	Py_Finalize();
    }
    end_dynamic_python();
#else
    if (FUNC2())
    {
# ifdef PY_CAN_RECURSE
	PyGILState_Ensure();
# else
	FUNC3();	    /* enter python */
# endif
	FUNC1();
    }
#endif

    --recurse;
}