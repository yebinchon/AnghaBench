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
typedef  int /*<<< orphan*/  short_u ;
typedef  scalar_t__ char_u ;
typedef  scalar_t__ WCHAR ;

/* Variables and functions */
 int FAIL ; 
 scalar_t__ FUNC0 () ; 
 int MAX_PATH ; 
 scalar_t__ NUL ; 
 int OK ; 
 scalar_t__ VER_PLATFORM_WIN32_NT ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__*,scalar_t__*,int) ; 
 int enc_codepage ; 
 scalar_t__* FUNC3 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int) ; 
 scalar_t__ g_PlatformId ; 
 int FUNC5 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 scalar_t__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,scalar_t__*,int) ; 

int
FUNC10(
    char_u	*fname,
    char_u	*buf,
    int		len,
    int		force)
{
    int		nResult = FAIL;

#ifdef __BORLANDC__
    if (*fname == NUL) /* Borland behaves badly here - make it consistent */
	nResult = mch_dirname(buf, len);
    else
#endif
    {
#ifdef FEAT_MBYTE
	if (enc_codepage >= 0 && (int)GetACP() != enc_codepage
# ifdef __BORLANDC__
		/* Wide functions of Borland C 5.5 do not work on Windows 98. */
		&& g_PlatformId == VER_PLATFORM_WIN32_NT
# endif
	   )
	{
	    WCHAR	*wname;
	    WCHAR	wbuf[MAX_PATH];
	    char_u	*cname = NULL;

	    /* Use the wide function:
	     * - convert the fname from 'encoding' to UCS2.
	     * - invoke _wfullpath()
	     * - convert the result from UCS2 to 'encoding'.
	     */
	    wname = enc_to_utf16(fname, NULL);
	    if (wname != NULL && _wfullpath(wbuf, wname, MAX_PATH - 1) != NULL)
	    {
		cname = utf16_to_enc((short_u *)wbuf, NULL);
		if (cname != NULL)
		{
		    vim_strncpy(buf, cname, len - 1);
		    nResult = OK;
		}
	    }
	    vim_free(wname);
	    vim_free(cname);
	}
	if (nResult == FAIL)	    /* fall back to non-wide function */
#endif
	{
	    if (FUNC1(buf, fname, len - 1) == NULL)
	    {
		/* failed, use relative path name */
		FUNC9(buf, fname, len - 1);
	    }
	    else
		nResult = OK;
	}
    }

#ifdef USE_FNAME_CASE
    fname_case(buf, len);
#else
    FUNC6(buf);
#endif

    return nResult;
}