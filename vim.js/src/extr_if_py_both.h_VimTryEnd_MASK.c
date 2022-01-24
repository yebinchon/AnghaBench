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
struct TYPE_2__ {scalar_t__ value; } ;

/* Variables and functions */
 void* FALSE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  PyExc_KeyboardInterrupt ; 
 TYPE_1__* current_exception ; 
 void* did_emsg ; 
 void* did_throw ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* got_int ; 
 void* need_rethrow ; 
 int /*<<< orphan*/  trylevel ; 

__attribute__((used)) static int
FUNC4(void)
{
    --trylevel;
    /* Without this it stops processing all subsequent VimL commands and
     * generates strange error messages if I e.g. try calling Test() in a
     * cycle */
    did_emsg = FALSE;
    /* Keyboard interrupt should be preferred over anything else */
    if (got_int)
    {
	if (current_exception != NULL)
	    FUNC3();
	else
	    need_rethrow = did_throw = FALSE;
	got_int = FALSE;
	FUNC1(PyExc_KeyboardInterrupt);
	return -1;
    }
    else if (!did_throw)
	return (FUNC0() ? -1 : 0);
    /* Python exception is preferred over vim one; unlikely to occur though */
    else if (FUNC0())
    {
	if (current_exception != NULL)
	    FUNC3();
	else
	    need_rethrow = did_throw = FALSE;
	return -1;
    }
    /* Finally transform VimL exception to python one */
    else
    {
	FUNC2((char *)current_exception->value);
	FUNC3();
	return -1;
    }
}