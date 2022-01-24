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
typedef  int /*<<< orphan*/ * Widget ;

/* Variables and functions */
 scalar_t__ False ; 
 scalar_t__ True ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(Widget shell)
{
	if (shell != NULL &&
	    FUNC0(shell) == True &&
	    FUNC3(shell) == True &&
	    FUNC2(shell) == False) {
		FUNC1(shell);
		/* This used to be
		     XtPopdown(shell);
		     XtPopup(shell, XtGrabNone);
		   However, I found that that would drop any transient
		   windows that had been iconified with the window.
		   According to the ICCCM, XtMapWidget should be used
		   to bring a window from Iconic to Normal state.
		   However, Rich Mauri did a lot of work on this during
		   Bart, and found that XtPopDown,XtPopup was required
		   to fix several bugs involving multiple CDE workspaces.
		   I've tested it now and things seem to work fine but
		   I'm leaving this note for history in case this needs
		   to be revisited.
		*/
	}
}