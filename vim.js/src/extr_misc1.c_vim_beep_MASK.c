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
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_2__ {scalar_t__ starting; scalar_t__ in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  BELL ; 
 int /*<<< orphan*/  HLF_W ; 
 int /*<<< orphan*/  T_VB ; 
 scalar_t__ FUNC0 (char*) ; 
 int beep_count ; 
 scalar_t__ emsg_silent ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  p_debug ; 
 scalar_t__ p_vb ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char) ; 

void
FUNC7()
{
    if (emsg_silent == 0)
    {
	if (p_vb
#ifdef FEAT_GUI
		/* While the GUI is starting up the termcap is set for the GUI
		 * but the output still goes to a terminal. */
		&& !(gui.in_use && gui.starting)
#endif
		)
	{
	    FUNC5(T_VB);
	}
	else
	{
#ifdef MSDOS
	    /*
	     * The number of beeps outputted is reduced to avoid having to wait
	     * for all the beeps to finish. This is only a problem on systems
	     * where the beeps don't overlap.
	     */
	    if (beep_count == 0 || beep_count == 10)
	    {
		out_char(BELL);
		beep_count = 1;
	    }
	    else
		++beep_count;
#else
	    FUNC4(BELL);
#endif
	}

	/* When 'verbose' is set and we are sourcing a script or executing a
	 * function give the user a hint where the beep comes from. */
	if (FUNC6(p_debug, 'e') != NULL)
	{
	    FUNC3(FUNC1(HLF_W));
	    FUNC2((char_u *)FUNC0("Beep!"), FUNC1(HLF_W));
	}
    }
}