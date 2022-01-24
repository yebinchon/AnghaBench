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
typedef  char char_u ;

/* Variables and functions */
 int FALSE ; 
 char NUL ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char) ; 

int
FUNC2(char_u *p)
{
    for ( ; *p; FUNC0(p))
    {
	if (FUNC1((char_u *)
#  ifdef VIM_BACKTICK
				    "?*$[`"
#  else
				    "?*$["
#  endif
						, *p) != NULL
		|| (*p == '~' && p[1] != NUL))
	    return TRUE;
    }
    return FALSE;
}