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
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 char NUL ; 
 char FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*) ; 
 int enc_codepage ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char) ; 
 int p_verbose ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int
FUNC11(char *path)
{
    if (path[0] == NUL)		/* just checking... */
	return -1;

    if (p_verbose >= 5)
    {
	FUNC8();
	FUNC7((char_u *)"chdir(%s)", path);
	FUNC9();
    }
    if (FUNC6(path[0]) && path[1] == ':')	/* has a drive name */
    {
	/* If we can change to the drive, skip that part of the path.  If we
	 * can't then the current directory may be invalid, try using chdir()
	 * with the whole path. */
	if (FUNC2(FUNC1(path[0]) - 'a' + 1) == 0)
	    path += 2;
    }

    if (*path == NUL)		/* drive name only */
	return 0;

#ifdef FEAT_MBYTE
    if (enc_codepage >= 0 && (int)GetACP() != enc_codepage)
    {
	WCHAR	*p = enc_to_utf16(path, NULL);
	int	n;

	if (p != NULL)
	{
	    n = _wchdir(p);
	    vim_free(p);
	    if (n == 0)
		return 0;
	    /* Retry with non-wide function (for Windows 98). */
	}
    }
#endif

    return FUNC4(path);	       /* let the normal chdir() do the rest */
}