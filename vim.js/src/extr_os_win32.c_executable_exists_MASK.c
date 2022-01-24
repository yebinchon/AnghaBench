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
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 int FALSE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,char*,char**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int TRUE ; 
 int _MAX_PATH ; 
 int enc_codepage ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(char *name)
{
    char	*dum;
    char	fname[_MAX_PATH];

#ifdef FEAT_MBYTE
    if (enc_codepage >= 0 && (int)GetACP() != enc_codepage)
    {
	WCHAR	*p = enc_to_utf16(name, NULL);
	WCHAR	fnamew[_MAX_PATH];
	WCHAR	*dumw;
	long	n;

	if (p != NULL)
	{
	    n = (long)SearchPathW(NULL, p, NULL, _MAX_PATH, fnamew, &dumw);
	    vim_free(p);
	    if (n > 0 || GetLastError() != ERROR_CALL_NOT_IMPLEMENTED)
	    {
		if (n == 0)
		    return FALSE;
		if (GetFileAttributesW(fnamew) & FILE_ATTRIBUTE_DIRECTORY)
		    return FALSE;
		return TRUE;
	    }
	    /* Retry with non-wide function (for Windows 98). */
	}
    }
#endif
    if (FUNC3(NULL, name, NULL, _MAX_PATH, fname, &dum) == 0)
	return FALSE;
    if (FUNC6(fname))
	return FALSE;
    return TRUE;
}