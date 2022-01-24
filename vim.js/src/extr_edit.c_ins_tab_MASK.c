#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ lnum; int col; } ;
typedef  TYPE_1__ pos_T ;
typedef  scalar_t__ colnr_T ;
typedef  char char_u ;
struct TYPE_13__ {scalar_t__ lnum; int col; } ;
struct TYPE_12__ {int w_p_list; TYPE_1__ w_cursor; } ;
struct TYPE_11__ {scalar_t__ b_p_ts; scalar_t__ b_p_sts; int /*<<< orphan*/  b_p_et; } ;

/* Variables and functions */
 char ABBR_OFF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CPO_LISTWM ; 
 scalar_t__ FAIL ; 
 int FALSE ; 
 TYPE_9__ Insstart ; 
 scalar_t__ Insstart_blank_vcol ; 
 scalar_t__ MAXCOL ; 
 int /*<<< orphan*/  NUL ; 
 int REPLACE_FLAG ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int State ; 
 char TAB ; 
 int TRUE ; 
 int VREPLACE_FLAG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int can_cindent ; 
 int can_si ; 
 int can_si_back ; 
 TYPE_2__* curbuf ; 
 TYPE_4__* curwin ; 
 int did_ai ; 
 int did_si ; 
 scalar_t__ FUNC3 (char) ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_1__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 char* FUNC14 () ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,scalar_t__,int,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,scalar_t__,int,long) ; 
 int /*<<< orphan*/  p_cpo ; 
 scalar_t__ p_sta ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 scalar_t__ FUNC22 (char) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC25()
{
    int		ind;
    int		i;
    int		temp;

    if (Insstart_blank_vcol == MAXCOL && curwin->w_cursor.lnum == Insstart.lnum)
	Insstart_blank_vcol = FUNC4();
    if (FUNC3(TAB + ABBR_OFF))
	return FALSE;

    ind = FUNC8(0);
#ifdef FEAT_CINDENT
    if (ind)
	can_cindent = FALSE;
#endif

    /*
     * When nothing special, insert TAB like a normal character
     */
    if (!curbuf->b_p_et
	    && !(p_sta && ind && curbuf->b_p_ts != FUNC6(curbuf))
	    && FUNC5() == 0)
	return TRUE;

    if (FUNC20() == FAIL)
	return TRUE;

    did_ai = FALSE;
#ifdef FEAT_SMARTINDENT
    did_si = FALSE;
    can_si = FALSE;
    can_si_back = FALSE;
#endif
    FUNC0((char_u *)"\t");

    if (p_sta && ind)		/* insert tab in indent, use 'shiftwidth' */
	temp = (int)FUNC6(curbuf);
    else if (curbuf->b_p_sts != 0) /* use 'softtabstop' when set */
	temp = (int)FUNC5();
    else			/* otherwise use 'tabstop' */
	temp = (int)curbuf->b_p_ts;
    temp -= FUNC4() % temp;

    /*
     * Insert the first space with ins_char().	It will delete one char in
     * replace mode.  Insert the rest with ins_str(); it will not delete any
     * chars.  For VREPLACE mode, we use ins_char() for all characters.
     */
    FUNC10(' ');
    while (--temp > 0)
    {
#ifdef FEAT_VREPLACE
	if (State & VREPLACE_FLAG)
	    ins_char(' ');
	else
#endif
	{
	    FUNC11((char_u *)" ");
	    if (State & REPLACE_FLAG)	    /* no char replaced */
		FUNC19(NUL);
	}
    }

    /*
     * When 'expandtab' not set: Replace spaces by TABs where possible.
     */
    if (!curbuf->b_p_et && (FUNC5() || (p_sta && ind)))
    {
	char_u		*ptr;
#ifdef FEAT_VREPLACE
	char_u		*saved_line = NULL;	/* init for GCC */
	pos_T		pos;
#endif
	pos_T		fpos;
	pos_T		*cursor;
	colnr_T		want_vcol, vcol;
	int		change_col = -1;
	int		save_list = curwin->w_p_list;

	/*
	 * Get the current line.  For VREPLACE mode, don't make real changes
	 * yet, just work on a copy of the line.
	 */
#ifdef FEAT_VREPLACE
	if (State & VREPLACE_FLAG)
	{
	    pos = curwin->w_cursor;
	    cursor = &pos;
	    saved_line = vim_strsave(ml_get_curline());
	    if (saved_line == NULL)
		return FALSE;
	    ptr = saved_line + pos.col;
	}
	else
#endif
	{
	    ptr = FUNC14();
	    cursor = &curwin->w_cursor;
	}

	/* When 'L' is not in 'cpoptions' a tab always takes up 'ts' spaces. */
	if (FUNC23(p_cpo, CPO_LISTWM) == NULL)
	    curwin->w_p_list = FALSE;

	/* Find first white before the cursor */
	fpos = curwin->w_cursor;
	while (fpos.col > 0 && FUNC22(ptr[-1]))
	{
	    --fpos.col;
	    --ptr;
	}

	/* In Replace mode, don't change characters before the insert point. */
	if ((State & REPLACE_FLAG)
		&& fpos.lnum == Insstart.lnum
		&& fpos.col < Insstart.col)
	{
	    ptr += Insstart.col - fpos.col;
	    fpos.col = Insstart.col;
	}

	/* compute virtual column numbers of first white and cursor */
	FUNC7(curwin, &fpos, &vcol, NULL, NULL);
	FUNC7(curwin, cursor, &want_vcol, NULL, NULL);

	/* Use as many TABs as possible.  Beware of 'showbreak' and
	 * 'linebreak' adding extra virtual columns. */
	while (FUNC22(*ptr))
	{
	    i = FUNC12((char_u *)"\t", vcol);
	    if (vcol + i > want_vcol)
		break;
	    if (*ptr != TAB)
	    {
		*ptr = TAB;
		if (change_col < 0)
		{
		    change_col = fpos.col;  /* Column of first change */
		    /* May have to adjust Insstart */
		    if (fpos.lnum == Insstart.lnum && fpos.col < Insstart.col)
			Insstart.col = fpos.col;
		}
	    }
	    ++fpos.col;
	    ++ptr;
	    vcol += i;
	}

	if (change_col >= 0)
	{
	    int repl_off = 0;

	    /* Skip over the spaces we need. */
	    while (vcol < want_vcol && *ptr == ' ')
	    {
		vcol += FUNC12(ptr, vcol);
		++ptr;
		++repl_off;
	    }
	    if (vcol > want_vcol)
	    {
		/* Must have a char with 'showbreak' just before it. */
		--ptr;
		--repl_off;
	    }
	    fpos.col += repl_off;

	    /* Delete following spaces. */
	    i = cursor->col - fpos.col;
	    if (i > 0)
	    {
		FUNC1(ptr, ptr + i);
		/* correct replace stack. */
		if ((State & REPLACE_FLAG)
#ifdef FEAT_VREPLACE
			&& !(State & VREPLACE_FLAG)
#endif
			)
		    for (temp = i; --temp >= 0; )
			FUNC18(repl_off);
	    }
#ifdef FEAT_NETBEANS_INTG
	    if (netbeans_active())
	    {
		netbeans_removed(curbuf, fpos.lnum, cursor->col, (long)(i + 1));
		netbeans_inserted(curbuf, fpos.lnum, cursor->col,
							   (char_u *)"\t", 1);
	    }
#endif
	    cursor->col -= i;

#ifdef FEAT_VREPLACE
	    /*
	     * In VREPLACE mode, we haven't changed anything yet.  Do it now by
	     * backspacing over the changed spacing and then inserting the new
	     * spacing.
	     */
	    if (State & VREPLACE_FLAG)
	    {
		/* Backspace from real cursor to change_col */
		backspace_until_column(change_col);

		/* Insert each char in saved_line from changed_col to
		 * ptr-cursor */
		ins_bytes_len(saved_line + change_col,
						    cursor->col - change_col);
	    }
#endif
	}

#ifdef FEAT_VREPLACE
	if (State & VREPLACE_FLAG)
	    vim_free(saved_line);
#endif
	curwin->w_p_list = save_list;
    }

    return FALSE;
}