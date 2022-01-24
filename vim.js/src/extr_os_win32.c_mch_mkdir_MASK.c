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
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int enc_codepage ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(char_u *name)
{
#ifdef FEAT_MBYTE
    if (enc_codepage >= 0 && (int)GetACP() != enc_codepage)
    {
	WCHAR	*p;
	int	retval;

	p = enc_to_utf16(name, NULL);
	if (p == NULL)
	    return -1;
	retval = _wmkdir(p);
	vim_free(p);
	return retval;
    }
#endif
    return FUNC1(name);
}