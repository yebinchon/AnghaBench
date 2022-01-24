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
typedef  scalar_t__ char_u ;

/* Variables and functions */
 int NODE_NORMAL ; 
 int NODE_WRITABLE ; 
 scalar_t__ NUL ; 
 scalar_t__ FUNC0 (scalar_t__*,char*) ; 
 scalar_t__ FUNC1 (scalar_t__*,char*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

int
FUNC3(char_u *name)
{
    if (FUNC0(name, "AUX") == 0
	    || FUNC0(name, "CON") == 0
	    || FUNC0(name, "CLOCK$") == 0
	    || FUNC0(name, "NUL") == 0
	    || FUNC0(name, "PRN") == 0
	    || ((FUNC1(name, "COM", 3) == 0
		    || FUNC1(name, "LPT", 3) == 0)
		&& FUNC2(name[3])
		&& name[4] == NUL))
	return NODE_WRITABLE;
    /* TODO: NODE_OTHER? */
    return NODE_NORMAL;
}