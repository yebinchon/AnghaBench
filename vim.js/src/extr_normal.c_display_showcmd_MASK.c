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
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ Rows ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ sc_col ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * showcmd_buf ; 
 int /*<<< orphan*/  showcmd_is_clear ; 

__attribute__((used)) static void
FUNC4()
{
    int	    len;

    FUNC1();

    len = (int)FUNC0(showcmd_buf);
    if (len == 0)
	showcmd_is_clear = TRUE;
    else
    {
	FUNC2(showcmd_buf, (int)Rows - 1, sc_col, 0);
	showcmd_is_clear = FALSE;
    }

    /*
     * clear the rest of an old message by outputting up to SHOWCMD_COLS
     * spaces
     */
    FUNC2((char_u *)"          " + len, (int)Rows - 1, sc_col + len, 0);

    FUNC3();	    /* put cursor back where it belongs */
}