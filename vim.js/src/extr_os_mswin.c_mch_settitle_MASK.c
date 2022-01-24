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
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int enc_codepage ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(
    char_u *title,
    char_u *icon)
{
# ifdef FEAT_GUI_MSWIN
    gui_mch_settitle(title, icon);
# else
    if (title != NULL)
    {
#  ifdef FEAT_MBYTE
	if (enc_codepage >= 0 && (int)GetACP() != enc_codepage)
	{
	    /* Convert the title from 'encoding' to the active codepage. */
	    WCHAR	*wp = enc_to_utf16(title, NULL);
	    int	n;

	    if (wp != NULL)
	    {
		n = SetConsoleTitleW(wp);
		vim_free(wp);
		if (n != 0 || GetLastError() != ERROR_CALL_NOT_IMPLEMENTED)
		    return;
	    }
	}
#  endif
	FUNC2(title);
    }
# endif
}