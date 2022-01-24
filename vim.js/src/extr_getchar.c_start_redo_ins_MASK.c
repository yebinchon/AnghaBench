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
 int FAIL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NL_STR ; 
 int NUL ; 
 int OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  block_redo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 

int
FUNC5()
{
    int	    c;

    if (FUNC1(TRUE, FALSE) == FAIL)
	return FAIL;
    FUNC2();

    /* skip the count and the command character */
    while ((c = FUNC1(FALSE, FALSE)) != NUL)
    {
	if (FUNC4((char_u *)"AaIiRrOo", c) != NULL)
	{
	    if (c == 'O' || c == 'o')
		FUNC3(NL_STR);
	    break;
	}
    }

    /* copy the typed text from the redo buffer into the stuff buffer */
    FUNC0(FALSE);
    block_redo = TRUE;
    return OK;
}