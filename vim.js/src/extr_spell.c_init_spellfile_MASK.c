#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ char_u ;
struct TYPE_14__ {scalar_t__ ga_len; } ;
struct TYPE_13__ {TYPE_2__* lp_slang; } ;
struct TYPE_8__ {scalar_t__* b_p_spl; } ;
struct TYPE_12__ {TYPE_1__ b_s; } ;
struct TYPE_11__ {TYPE_3__* w_s; } ;
struct TYPE_10__ {scalar_t__* b_p_spl; TYPE_7__ b_langp; } ;
struct TYPE_9__ {scalar_t__* sl_fname; } ;

/* Variables and functions */
 int FALSE ; 
 TYPE_6__* FUNC0 (TYPE_7__,int /*<<< orphan*/ ) ; 
 scalar_t__ MAXPATHL ; 
 scalar_t__ NUL ; 
 int /*<<< orphan*/  OPT_LOCAL ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 int TRUE ; 
 scalar_t__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__**,scalar_t__*,scalar_t__,char*) ; 
 TYPE_5__* curbuf ; 
 TYPE_4__* curwin ; 
 int FUNC4 (scalar_t__*) ; 
 scalar_t__ FUNC5 (scalar_t__*) ; 
 scalar_t__* p_rtp ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,long,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,scalar_t__,char*,...) ; 
 int /*<<< orphan*/ * FUNC13 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,scalar_t__*,int) ; 

__attribute__((used)) static void
FUNC15()
{
    char_u	*buf;
    int		l;
    char_u	*fname;
    char_u	*rtp;
    char_u	*lend;
    int		aspath = FALSE;
    char_u	*lstart = curbuf->b_s.b_p_spl;

    if (*curwin->w_s->b_p_spl != NUL && curwin->w_s->b_langp.ga_len > 0)
    {
	buf = FUNC2(MAXPATHL);
	if (buf == NULL)
	    return;

	/* Find the end of the language name.  Exclude the region.  If there
	 * is a path separator remember the start of the tail. */
	for (lend = curwin->w_s->b_p_spl; *lend != NUL
			&& FUNC13((char_u *)",._", *lend) == NULL; ++lend)
	    if (FUNC10(*lend))
	    {
		aspath = TRUE;
		lstart = lend + 1;
	    }

	/* Loop over all entries in 'runtimepath'.  Use the first one where we
	 * are allowed to write. */
	rtp = p_rtp;
	while (*rtp != NUL)
	{
	    if (aspath)
		/* Use directory of an entry with path, e.g., for
		 * "/dir/lg.utf-8.spl" use "/dir". */
		FUNC14(buf, curbuf->b_s.b_p_spl,
					    lstart - curbuf->b_s.b_p_spl - 1);
	    else
		/* Copy the path from 'runtimepath' to buf[]. */
		FUNC3(&rtp, buf, MAXPATHL, ",");
	    if (FUNC4(buf) == 2)
	    {
		/* Use the first language name from 'spelllang' and the
		 * encoding used in the first loaded .spl file. */
		if (aspath)
		    FUNC14(buf, curbuf->b_s.b_p_spl,
						  lend - curbuf->b_s.b_p_spl);
		else
		{
		    /* Create the "spell" directory if it doesn't exist yet. */
		    l = (int)FUNC1(buf);
		    FUNC12((char *)buf + l, MAXPATHL - l, "/spell");
		    if (FUNC4(buf) != 2)
			FUNC11(buf, 0755);

		    l = (int)FUNC1(buf);
		    FUNC12((char *)buf + l, MAXPATHL - l,
				 "/%.*s", (int)(lend - lstart), lstart);
		}
		l = (int)FUNC1(buf);
		fname = FUNC0(curwin->w_s->b_langp, 0)
							 ->lp_slang->sl_fname;
		FUNC12((char *)buf + l, MAXPATHL - l, ".%s.add",
			fname != NULL
			  && FUNC8((char *)FUNC5(fname), ".ascii.") != NULL
				       ? (char_u *)"ascii" : FUNC7());
		FUNC6((char_u *)"spellfile", 0L, buf, OPT_LOCAL);
		break;
	    }
	    aspath = FALSE;
	}

	FUNC9(buf);
    }
}