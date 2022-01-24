#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char char_u ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {int b_p_ro; int /*<<< orphan*/ * b_ffname; int /*<<< orphan*/ * b_fname; int /*<<< orphan*/  b_p_ma; } ;

/* Variables and functions */
 int Columns ; 
 void* FALSE ; 
 int IOSIZE ; 
 scalar_t__ NUL ; 
 int /*<<< orphan*/  OPT_FREE ; 
 int /*<<< orphan*/  SID_ERROR ; 
 int SPACE_FOR_ARGNR ; 
 int SPACE_FOR_DIR ; 
 size_t SPACE_FOR_FNAME ; 
 int STL_IN_ICON ; 
 int STL_IN_TITLE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 void* TRUE ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,void*) ; 
 int FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,scalar_t__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int called_emsg ; 
 TYPE_1__* curbuf ; 
 int /*<<< orphan*/  curwin ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (char*) ; 
 scalar_t__ has_mbyte ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,char*,int,void*) ; 
 scalar_t__ FUNC11 (char) ; 
 int /*<<< orphan*/ * lasticon ; 
 int /*<<< orphan*/ * lasttitle ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 void* need_maketitle ; 
 scalar_t__ p_icon ; 
 scalar_t__* p_iconstring ; 
 scalar_t__ p_title ; 
 int p_titlelen ; 
 scalar_t__* p_titlestring ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/ * serverName ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int stl_syntax ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 int FUNC17 (char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 
 char* FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*,size_t) ; 
 int FUNC24 (char*) ; 
 int FUNC25 (char*,int /*<<< orphan*/ ) ; 

void
FUNC26()
{
    char_u	*p;
    char_u	*t_str = NULL;
    char_u	*i_name;
    char_u	*i_str = NULL;
    int		maxlen = 0;
    int		len;
    int		mustset;
    char_u	buf[IOSIZE];
    int		off;

    if (!FUNC13())
    {
	/* Postpone updating the title when 'lazyredraw' is set. */
	need_maketitle = TRUE;
	return;
    }

    need_maketitle = FALSE;
    if (!p_title && !p_icon && lasttitle == NULL && lasticon == NULL)
	return;

    if (p_title)
    {
	if (p_titlelen > 0)
	{
	    maxlen = p_titlelen * Columns / 100;
	    if (maxlen < 10)
		maxlen = 10;
	}

	t_str = buf;
	if (*p_titlestring != NUL)
	{
#ifdef FEAT_STL_OPT
	    if (stl_syntax & STL_IN_TITLE)
	    {
		int	use_sandbox = FALSE;
		int	save_called_emsg = called_emsg;

# ifdef FEAT_EVAL
		use_sandbox = was_set_insecurely((char_u *)"titlestring", 0);
# endif
		called_emsg = FALSE;
		build_stl_str_hl(curwin, t_str, sizeof(buf),
					      p_titlestring, use_sandbox,
					      0, maxlen, NULL, NULL);
		if (called_emsg)
		    set_string_option_direct((char_u *)"titlestring", -1,
					   (char_u *)"", OPT_FREE, SID_ERROR);
		called_emsg |= save_called_emsg;
	    }
	    else
#endif
		t_str = p_titlestring;
	}
	else
	{
	    /* format: "fname + (path) (1 of 2) - VIM" */

#define SPACE_FOR_FNAME (IOSIZE - 100)
#define SPACE_FOR_DIR   (IOSIZE - 20)
#define SPACE_FOR_ARGNR (IOSIZE - 10)  /* at least room for " - VIM" */
	    if (curbuf->b_fname == NULL)
		FUNC23(buf, (char_u *)FUNC3("[No Name]"), SPACE_FOR_FNAME);
	    else
	    {
		p = FUNC19(FUNC8(curbuf->b_fname));
		FUNC23(buf, p, SPACE_FOR_FNAME);
		FUNC21(p);
	    }

	    switch (FUNC5(curbuf)
		    + (curbuf->b_p_ro * 2)
		    + (!curbuf->b_p_ma * 4))
	    {
		case 1: FUNC0(buf, " +"); break;
		case 2: FUNC0(buf, " ="); break;
		case 3: FUNC0(buf, " =+"); break;
		case 4:
		case 6: FUNC0(buf, " -"); break;
		case 5:
		case 7: FUNC0(buf, " -+"); break;
	    }

	    if (curbuf->b_fname != NULL)
	    {
		/* Get path of file, replace home dir with ~ */
		off = (int)FUNC2(buf);
		buf[off++] = ' ';
		buf[off++] = '(';
		FUNC10(curbuf, curbuf->b_ffname,
					buf + off, SPACE_FOR_DIR - off, TRUE);
#ifdef BACKSLASH_IN_FILENAME
		/* avoid "c:/name" to be reduced to "c" */
		if (isalpha(buf[off]) && buf[off + 1] == ':')
		    off += 2;
#endif
		/* remove the file name */
		p = FUNC9(buf + off);
		if (p == buf + off)
		    /* must be a help buffer */
		    FUNC23(buf + off, (char_u *)FUNC3("help"),
					   (size_t)(SPACE_FOR_DIR - off - 1));
		else
		    *p = NUL;

		/* Translate unprintable chars and concatenate.  Keep some
		 * room for the server name.  When there is no room (very long
		 * file name) use (...). */
		if (off < SPACE_FOR_DIR)
		{
		    p = FUNC19(buf + off);
		    FUNC23(buf + off, p, (size_t)(SPACE_FOR_DIR - off));
		    FUNC21(p);
		}
		else
		{
		    FUNC23(buf + off, (char_u *)"...",
					     (size_t)(SPACE_FOR_ARGNR - off));
		}
		FUNC0(buf, ")");
	    }

	    FUNC4(curwin, buf, SPACE_FOR_ARGNR, FALSE);

#if defined(FEAT_CLIENTSERVER)
	    if (serverName != NULL)
	    {
		STRCAT(buf, " - ");
		vim_strcat(buf, serverName, IOSIZE);
	    }
	    else
#endif
		FUNC0(buf, " - VIM");

	    if (maxlen > 0)
	    {
		/* make it shorter by removing a bit in the middle */
		if (FUNC24(buf) > maxlen)
		    FUNC20(buf, buf, maxlen, IOSIZE);
	    }
	}
    }
    mustset = FUNC17(t_str, &lasttitle);

    if (p_icon)
    {
	i_str = buf;
	if (*p_iconstring != NUL)
	{
#ifdef FEAT_STL_OPT
	    if (stl_syntax & STL_IN_ICON)
	    {
		int	use_sandbox = FALSE;
		int	save_called_emsg = called_emsg;

# ifdef FEAT_EVAL
		use_sandbox = was_set_insecurely((char_u *)"iconstring", 0);
# endif
		called_emsg = FALSE;
		build_stl_str_hl(curwin, i_str, sizeof(buf),
						    p_iconstring, use_sandbox,
						    0, 0, NULL, NULL);
		if (called_emsg)
		    set_string_option_direct((char_u *)"iconstring", -1,
					   (char_u *)"", OPT_FREE, SID_ERROR);
		called_emsg |= save_called_emsg;
	    }
	    else
#endif
		i_str = p_iconstring;
	}
	else
	{
	    if (FUNC6(curbuf) != NULL)
		i_name = FUNC6(curbuf);
	    else		    /* use file name only in icon */
		i_name = FUNC8(curbuf->b_ffname);
	    *i_str = NUL;
	    /* Truncate name at 100 bytes. */
	    len = (int)FUNC2(i_name);
	    if (len > 100)
	    {
		len -= 100;
#ifdef FEAT_MBYTE
		if (has_mbyte)
		    len += (*mb_tail_off)(i_name, i_name + len) + 1;
#endif
		i_name += len;
	    }
	    FUNC1(i_str, i_name);
	    FUNC18(i_str, IOSIZE);
	}
    }

    mustset |= FUNC17(i_str, &lasticon);

    if (mustset)
	FUNC14();
}