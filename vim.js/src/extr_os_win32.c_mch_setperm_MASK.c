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
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 int FAIL ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int OK ; 
 long FUNC2 (int /*<<< orphan*/ *,long) ; 
 long FUNC3 (int /*<<< orphan*/ *,long) ; 
 int enc_codepage ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(char_u *name, long perm)
{
    long	n = -1;

#ifdef FEAT_MBYTE
    if (enc_codepage >= 0 && (int)GetACP() != enc_codepage)
    {
	WCHAR *p = enc_to_utf16(name, NULL);

	if (p != NULL)
	{
	    n = _wchmod(p, perm);
	    vim_free(p);
	    if (n == -1 && GetLastError() != ERROR_CALL_NOT_IMPLEMENTED)
		return FAIL;
	    /* Retry with non-wide function (for Windows 98). */
	}
    }
    if (n == -1)
#endif
	n = FUNC2(name, perm);
    if (n == -1)
	return FAIL;

    FUNC6(name);

    return OK;
}