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
 int MAXENVLEN ; 
 scalar_t__ NUL ; 
 int FUNC0 (scalar_t__*) ; 
 scalar_t__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 

char_u *
FUNC5(char_u *name)
{
    int		i;
#define MAXENVLEN 50
    char_u	var_copy[MAXENVLEN + 1];
    char_u	*p;
    char_u	*res;

    /*
     * Take a copy of the argument, and force it to upper case before passing
     * to getenv().  On DOS systems, getenv() doesn't like lower-case argument
     * (unlike Win32 et al.)  If the name is too long to fit in var_copy[]
     * allocate memory.
     */
    if ((i = FUNC0(name)) > MAXENVLEN)
	p = FUNC1(i + 1);
    else
	p = var_copy;
    if (p == NULL)
	p = name;   /* out of memory, fall back to unmodified name */
    else
    {
	for (i = 0; name[i] != NUL; ++i)
	    p[i] = FUNC3(name[i]);
	p[i] = NUL;
    }

    res = (char_u *)FUNC2((char *)p);

    if (p != var_copy && p != name)
	FUNC4(p);

    return res;
}