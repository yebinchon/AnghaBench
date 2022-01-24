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
typedef  int MMKeyFlags ;
typedef  int MMKeyCode ;

/* Variables and functions */
 int MOD_ALT ; 
 int MOD_CONTROL ; 
 int MOD_SHIFT ; 
 scalar_t__ FUNC0 (char) ; 
 int FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int,int const,int) ; 

void FUNC3(char c, const bool down, MMKeyFlags flags)
{
	MMKeyCode keyCode = FUNC1(c);

	//Prevent unused variable warning for Mac and Linux.
#if defined(IS_WINDOWS)
	int modifiers;
#endif

	if (FUNC0(c) && !(flags & MOD_SHIFT)) {
		flags |= MOD_SHIFT; /* Not sure if this is safe for all layouts. */
	}

#if defined(IS_WINDOWS)
	modifiers = keyCode >> 8; // Pull out modifers.
	if ((modifiers & 1) != 0) flags |= MOD_SHIFT; // Uptdate flags from keycode modifiers.
    if ((modifiers & 2) != 0) flags |= MOD_CONTROL;
    if ((modifiers & 4) != 0) flags |= MOD_ALT;
    keyCode = keyCode & 0xff; // Mask out modifiers.
#endif
	FUNC2(keyCode, down, flags);
}