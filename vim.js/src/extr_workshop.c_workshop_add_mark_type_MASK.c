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
typedef  int /*<<< orphan*/  cibuf ;
typedef  int /*<<< orphan*/  char_u ;
typedef  int /*<<< orphan*/  cbuf ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FALSE ; 
 char NUL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (int) ; 
 int WS_TRACE ; 
 int WS_TRACE_VERBOSE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 

void
FUNC7(
	int		 idx,
	char		*colorspec,
	char		*sign)
{
    char	 gbuf[BUFSIZ];	/* buffer for sign name */
    char	 cibuf[BUFSIZ];	/* color information */
    char	 cbuf[BUFSIZ];	/* command buffer */
    char	*bp;

#ifdef WSDEBUG_TRACE
    if (WSDLEVEL(WS_TRACE_VERBOSE | WS_TRACE))
    {
	char *cp;

	cp = strrchr(sign, '/');
	if (cp == NULL)
	    cp = sign;
	else
	    cp++;		/* skip '/' character */
	wstrace("workshop_add_mark_type(%d, \"%s\", \"%s\")\n", idx,
		colorspec && *colorspec ? colorspec : "<None>", cp);
    }
#endif

    /*
     * Isolate the basename of sign in gbuf. We will use this for the
     * GroupName in the highlight command sent to vim.
     */
    FUNC0(gbuf, FUNC3((char_u *)sign));
    bp = FUNC4(gbuf, '.');
    if (bp != NULL)
	*bp = NUL;

    if (gbuf[0] != '-' && gbuf[1] != NUL)
    {
	if (colorspec != NULL && *colorspec)
	{
	    FUNC5(cbuf, sizeof(cbuf),
				  "highlight WS%s guibg=%s", gbuf, colorspec);
	    FUNC2(cbuf, FALSE);
	    FUNC5(cibuf, sizeof(cibuf), "linehl=WS%s", gbuf);
	}
	else
	    cibuf[0] = NUL;

	FUNC5(cbuf, sizeof(cbuf),
			       "sign define %d %s icon=%s", idx, cibuf, sign);
	FUNC2(cbuf, TRUE);
    }
}