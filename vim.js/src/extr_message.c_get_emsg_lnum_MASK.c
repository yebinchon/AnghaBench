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
typedef  int /*<<< orphan*/  char_u ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int) ; 
 scalar_t__ last_sourcing_lnum ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ sourcing_lnum ; 
 int /*<<< orphan*/ * sourcing_name ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,long) ; 

__attribute__((used)) static char_u *
FUNC5()
{
    char_u	*Buf, *p;

    /* lnum is 0 when executing a command from the command line
     * argument, we don't want a line number then */
    if (sourcing_name != NULL
	    && (FUNC3() || sourcing_lnum != last_sourcing_lnum)
	    && sourcing_lnum != 0)
    {
	p = (char_u *)FUNC1("line %4ld:");
	Buf = FUNC2((unsigned)(FUNC0(p) + 20));
	if (Buf != NULL)
	    FUNC4((char *)Buf, (char *)p, (long)sourcing_lnum);
	return Buf;
    }
    return NULL;
}