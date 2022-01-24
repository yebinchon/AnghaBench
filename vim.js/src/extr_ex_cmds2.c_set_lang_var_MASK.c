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

/* Variables and functions */
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_MESSAGES ; 
 int /*<<< orphan*/  LC_TIME ; 
 int /*<<< orphan*/  VV_CTYPE ; 
 int /*<<< orphan*/  VV_LANG ; 
 int /*<<< orphan*/  VV_LC_TIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void
FUNC3()
{
    char_u	*loc;

# ifdef HAVE_GET_LOCALE_VAL
    loc = (char_u *)get_locale_val(LC_CTYPE);
# else
    /* setlocale() not supported: use the default value */
    loc = (char_u *)"C";
# endif
    FUNC2(VV_CTYPE, loc, -1);

    /* When LC_MESSAGES isn't defined use the value from $LC_MESSAGES, fall
     * back to LC_CTYPE if it's empty. */
# if defined(HAVE_GET_LOCALE_VAL) && defined(LC_MESSAGES)
    loc = (char_u *)get_locale_val(LC_MESSAGES);
# else
    loc = FUNC1();
# endif
    FUNC2(VV_LANG, loc, -1);

# ifdef HAVE_GET_LOCALE_VAL
    loc = (char_u *)get_locale_val(LC_TIME);
# endif
    FUNC2(VV_LC_TIME, loc, -1);
}