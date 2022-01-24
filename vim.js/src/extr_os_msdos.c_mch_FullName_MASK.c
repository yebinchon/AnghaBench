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
struct ffblk {char* ff_name; } ;
typedef  char char_u ;

/* Variables and functions */
 int FAIL ; 
 int /*<<< orphan*/  FA_DIREC ; 
 int MAXPATHL ; 
 char NUL ; 
 int OK ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,struct ffblk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (char) ; 
 scalar_t__ FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 int psepc ; 
 char* pseps ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 char* FUNC13 (char*,char) ; 

int
FUNC14(
    char_u	*fname,
    char_u	*buf,
    int		len,
    int		force)
{
    if (!force && FUNC9(fname))	/* already expanded */
    {
	FUNC12(buf, fname, len - 1);
	FUNC10(buf);
	return OK;
    }

#ifdef __BORLANDC__		/* Only Borland C++ has this */
    if (_fullpath((char *)buf, (char *)fname, len - 1) == NULL)
	return FAIL;
    return OK;
#else			/* almost the same as mch_FullName() in os_unix.c */
    {
# if 1
	char_u	fullpath[MAXPATHL];

	if (!FUNC4(fname, fullpath))
	    return FAIL;
	FUNC10(fullpath);	    /* Only needed when 'shellslash' set */
	FUNC12(buf, fullpath, len - 1);
	return OK;

# else  /* Old code, to be deleted... */
	int	l;
	char_u	olddir[MAXPATHL];
	char_u	*p, *q;
	int	c;
	int	retval = OK;

	*buf = 0;
	/*
	 * change to the directory for a moment,
	 * and then do the getwd() (and get back to where we were).
	 * This will get the correct path name with "../" things.
	 */
	p = vim_strrchr(fname, '/');
	q = vim_strrchr(fname, '\\');
	if (q != NULL && (p == NULL || q > p))
	    p = q;
	q = vim_strrchr(fname, ':');
	if (q != NULL && (p == NULL || q > p))
	    p = q;
	if (p != NULL)
	{
	    if (getcwd(olddir, MAXPATHL) == NULL)
	    {
		p = NULL;	/* can't get current dir: don't chdir */
		retval = FAIL;
	    }
	    else
	    {
		if (p == fname)			/* /fname	    */
		    q = p + 1;			/* -> /		    */
		else if (q + 1 == p)		/* ... c:\foo	    */
		    q = p + 1;			/* -> c:\	    */
		else				/* but c:\foo\bar   */
		    q = p;			/* -> c:\foo	    */

		c = *q;			/* truncate at start of fname */
		*q = NUL;
# ifdef DJGPP
		STRCPY(buf, fname);
		slash_adjust(buf);	/* needed when fname starts with \ */
		if (mch_chdir(buf))	/* change to the directory */
# else
		if (mch_chdir(fname))	/* change to the directory */
# endif
		    retval = FAIL;
		else
		{
		    fname = q;
		    if (c == psepc)	    /* if we cut the name at a */
			fname++;	    /* '\', don't add it again */
		}
		*q = c;
	    }
	}
	if (getcwd(buf, len) == NULL)
	{
	    retval = FAIL;
	    *buf = NUL;
	}
#  ifdef USE_FNAME_CASE
	else
	{
	    char_u	*head;
	    char_u	*tail;
	    struct ffblk fb;
	    int		c;
	    int		added;

	    /* Apparently "longna~1" isn't expanded by getcwd(), at least not
	     * for DJGPP.  Expand it here.  Have to do each dirname
	     * separately. */
	    slash_adjust(buf);
	    head = buf;
	    if (isalpha(*head) && head[1] == ':')
		head += 2;	/* skip "c:" */
	    while (*head != NUL)
	    {
		/* Advance "head" to the start of a dirname and "tail" to just
		 * after it. */
		while (*head == '/' || *head == '\\')
		    ++head;
		for (tail = head; *tail != NUL; ++tail)
		    if (*tail == '/' || *tail == '\\')
			break;
		c = *tail;
		*tail = NUL;

		if (findfirst(buf, &fb, FA_DIREC) == 0)
		{
		    added = STRLEN(fb.ff_name);
		    if ((head - buf) + added + STRLEN(tail + 1) + 2 < len)
		    {
			added -= (tail - head);
			if (added != 0)
			    STRMOVE(tail + 1 + added, tail + 1);
			STRCPY(head, fb.ff_name);
			tail += added;
		    }
		}
		*tail = c;
		head = tail;
	    }
	}
#  endif
	if (p != NULL)
	    mch_chdir(olddir);
	/*
	 * Concatenate the file name to the path.
	 */
	if (*fname != NUL)
	{
	    l = STRLEN(buf);
	    if (l > 0 && buf[l - 1] != '/' && buf[l - 1] != '\\')
		strcat(buf, pseps);
	    strcat(buf, fname);
	}
	return retval;
# endif
    }
#endif
}