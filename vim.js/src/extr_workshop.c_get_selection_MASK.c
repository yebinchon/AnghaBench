#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int lnum; int col; } ;
typedef  TYPE_2__ pos_T ;
struct TYPE_6__ {char vi_mode; TYPE_2__ vi_end; TYPE_2__ vi_start; } ;
struct TYPE_8__ {TYPE_1__ b_visual; } ;
typedef  TYPE_3__ buf_T ;

/* Variables and functions */
 int BUFSIZ ; 
 char NUL ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*,int*,int*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

__attribute__((used)) static char *
FUNC8(
	buf_T		*buf)		/* buffer whose selection we want */
{
    pos_T	*start;		/* start of the selection */
    pos_T	*end;		/* end of the selection */
    char	*lp;		/* pointer to actual line data */
    int		 llen;		/* length of actual line data */
    char	*sp;		/* pointer to selection  buffer */
    int		 slen;		/* string length in selection buffer */
    int		 size;		/* size of selection buffer */
    char	*new_sp;	/* temp pointer to new sp */
    int		 lnum;		/* line number we are appending */

    if (buf->b_visual.vi_mode == 'v')
    {
	start = &buf->b_visual.vi_start;
	end = &buf->b_visual.vi_end;
	if (start->lnum == end->lnum)
	{
	    /* selection is all on one line */
	    lp = (char *) FUNC3(start);
	    llen = end->col - start->col + 1;
	    sp = (char *) FUNC1(llen + 1);
	    if (sp != NULL)
	    {
		FUNC7(sp, lp, llen);
		sp[llen] = NUL;
	    }
	}
	else
	{
	    /* multi-line selection */
	    lp = (char *) FUNC3(start);
	    llen = FUNC6(lp);
	    sp = (char *) FUNC1(BUFSIZ + llen);
	    if (sp != NULL)
	    {
		size = BUFSIZ + llen;
		FUNC5(sp, lp);
		sp[llen] = '\n';
		slen = llen + 1;

		lnum = start->lnum + 1;
		while (lnum < end->lnum)
		    sp = FUNC0(lnum++, sp, &size, &slen);

		lp = (char *) FUNC2(end->lnum);
		llen = end->col + 1;
		if ((slen + llen) >= size)
		{
		    new_sp = (char *)
			FUNC4(sp, slen + llen + 1);
		    if (new_sp != NULL)
		    {
			size += llen + 1;
			sp = new_sp;
		    }
		}
		if ((slen + llen) < size)
		{
		    FUNC7(&sp[slen], lp, llen);
		    sp[slen + llen] = NUL;
		}

	    }
	}
    }
    else
	sp = NULL;

    return sp;
}