#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tp_diff_invalid; struct TYPE_3__* tp_next; } ;
typedef  TYPE_1__ tabpage_T ;
typedef  int /*<<< orphan*/  linenr_T ;
typedef  char char_u ;

/* Variables and functions */
 int DIFF_FILLER ; 
 int DIFF_HORIZONTAL ; 
 int DIFF_ICASE ; 
 int DIFF_IWHITE ; 
 int DIFF_VERTICAL ; 
 int FAIL ; 
 char NUL ; 
 int OK ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,long) ; 
 int diff_context ; 
 int diff_flags ; 
 int diff_foldcolumn ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* first_tabpage ; 
 int FUNC4 (char**) ; 
 char* p_dip ; 

int
FUNC5()
{
    char_u	*p;
    int		diff_context_new = 6;
    int		diff_flags_new = 0;
    int		diff_foldcolumn_new = 2;
    tabpage_T	*tp;

    p = p_dip;
    while (*p != NUL)
    {
	if (FUNC0(p, "filler", 6) == 0)
	{
	    p += 6;
	    diff_flags_new |= DIFF_FILLER;
	}
	else if (FUNC0(p, "context:", 8) == 0 && FUNC1(p[8]))
	{
	    p += 8;
	    diff_context_new = FUNC4(&p);
	}
	else if (FUNC0(p, "icase", 5) == 0)
	{
	    p += 5;
	    diff_flags_new |= DIFF_ICASE;
	}
	else if (FUNC0(p, "iwhite", 6) == 0)
	{
	    p += 6;
	    diff_flags_new |= DIFF_IWHITE;
	}
	else if (FUNC0(p, "horizontal", 10) == 0)
	{
	    p += 10;
	    diff_flags_new |= DIFF_HORIZONTAL;
	}
	else if (FUNC0(p, "vertical", 8) == 0)
	{
	    p += 8;
	    diff_flags_new |= DIFF_VERTICAL;
	}
	else if (FUNC0(p, "foldcolumn:", 11) == 0 && FUNC1(p[11]))
	{
	    p += 11;
	    diff_foldcolumn_new = FUNC4(&p);
	}
	if (*p != ',' && *p != NUL)
	    return FAIL;
	if (*p == ',')
	    ++p;
    }

    /* Can't have both "horizontal" and "vertical". */
    if ((diff_flags_new & DIFF_HORIZONTAL) && (diff_flags_new & DIFF_VERTICAL))
	return FAIL;

    /* If "icase" or "iwhite" was added or removed, need to update the diff. */
    if (diff_flags != diff_flags_new)
	for (tp = first_tabpage; tp != NULL; tp = tp->tp_next)
	    tp->tp_diff_invalid = TRUE;

    diff_flags = diff_flags_new;
    diff_context = diff_context_new;
    diff_foldcolumn = diff_foldcolumn_new;

    FUNC3(TRUE);

    /* recompute the scroll binding with the new option value, may
     * remove or add filler lines */
    FUNC2((linenr_T)0, 0L);

    return OK;
}