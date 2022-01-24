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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int BUFSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 char NUL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* FUNC7 (char*,char) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 char* FUNC10 (char*,char) ; 

__attribute__((used)) static char *
FUNC11(char *buf, char *fname, int len)
{
# ifdef WIN3264
    /* Only GetModuleFileName() will get the long file name path.
     * GetFullPathName() may still use the short (FAT) name. */
    DWORD len_read = GetModuleFileName(NULL, buf, (size_t)len);

    return (len_read > 0 && len_read < (DWORD)len) ? buf : NULL;
# else
    char	olddir[BUFSIZE];
    char	*p, *q;
    int		c;
    char	*retval = buf;

    if (FUNC7(fname, ':') != NULL)	/* already expanded */
    {
	FUNC9(buf, fname, len);
    }
    else
    {
	*buf = NUL;
	/*
	 * change to the directory for a moment,
	 * and then do the getwd() (and get back to where we were).
	 * This will get the correct path name with "../" things.
	 */
	p = FUNC10(fname, '/');
	q = FUNC10(fname, '\\');
	if (q != NULL && (p == NULL || q > p))
	    p = q;
	q = FUNC10(fname, ':');
	if (q != NULL && (p == NULL || q > p))
	    p = q;
	if (p != NULL)
	{
	    if (FUNC2(olddir, BUFSIZE) == NULL)
	    {
		p = NULL;		/* can't get current dir: don't chdir */
		retval = NULL;
	    }
	    else
	    {
		if (p == fname)		/* /fname		*/
		    q = p + 1;		/* -> /			*/
		else if (q + 1 == p)	/* ... c:\foo		*/
		    q = p + 1;		/* -> c:\		*/
		else			/* but c:\foo\bar	*/
		    q = p;		/* -> c:\foo		*/

		c = *q;			/* truncate at start of fname */
		*q = NUL;
		if (FUNC3(fname))	/* change to the directory */
		    retval = NULL;
		else
		{
		    fname = q;
		    if (c == '\\')	/* if we cut the name at a */
			fname++;	/* '\', don't add it again */
		}
		*q = c;
	    }
	}
	if (FUNC2(buf, len) == NULL)
	{
	    retval = NULL;
	    *buf = NUL;
	}
	/*
	 * Concatenate the file name to the path.
	 */
	if (FUNC8(buf) + FUNC8(fname) >= len - 1)
	{
	    FUNC5("ERROR: File name too long!\n");
	    FUNC4(1);
	}
	FUNC1(buf);
	FUNC6(buf, fname);
	if (p)
	    FUNC3(olddir);
    }

    /* Replace forward slashes with backslashes, required for the path to a
     * command. */
    while ((p = FUNC7(buf, '/')) != NULL)
	*p = '\\';

    return retval;
# endif
}