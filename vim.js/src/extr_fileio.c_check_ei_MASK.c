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
 int FAIL ; 
 char NUL ; 
 scalar_t__ NUM_EVENTS ; 
 int OK ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 scalar_t__ FUNC1 (char*,char**) ; 
 char* p_ei ; 

int
FUNC2()
{
    char_u	*p = p_ei;

    while (*p)
    {
	if (FUNC0(p, "all", 3) == 0 && (p[3] == NUL || p[3] == ','))
	{
	    p += 3;
	    if (*p == ',')
		++p;
	}
	else if (FUNC1(p, &p) == NUM_EVENTS)
	    return FAIL;
    }

    return OK;
}