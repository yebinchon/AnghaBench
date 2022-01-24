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
typedef  int wint_t ;
typedef  int /*<<< orphan*/ * _locale_t ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    int i, j;
    wint_t ret, exp;
    _locale_t locale;
    static const char *locales[] = { NULL, "C" };

    /* C locale only converts case for [a-zA-Z] */
    FUNC8(LC_ALL, "C");
    for (i = 0; i <= 0xffff; i++)
    {
        ret = FUNC6(i);
        if (i >= 'A' && i <= 'Z')
        {
            exp = i + 'a' - 'A';
            FUNC1(ret == exp, "expected %x, got %x for C locale\n", exp, ret);
        }
        else
            FUNC1(ret == i, "expected self %x, got %x for C locale\n", i, ret);

        ret = FUNC7(i);
        if (i >= 'a' && i <= 'z')
        {
            exp = i + 'A' - 'a';
            FUNC1(ret == exp, "expected %x, got %x for C locale\n", exp, ret);
        }
        else
            FUNC1(ret == i, "expected self %x, got %x for C locale\n", i, ret);
    }

    if (!&p__towlower_l || !&p__towupper_l || !&p__create_locale)
    {
        FUNC9("_towlower_l/_towupper_l/_create_locale not available\n");
        return;
    }

    for (i = 0; i < FUNC0(locales); i++) {
        locale = locales[i] ? FUNC2(LC_ALL, locales[i]) : NULL;

        for (j = 0; j <= 0xffff; j++) {
            ret = FUNC4(j, locale);
            if (j >= 'A' && j <= 'Z')
            {
                exp = j + 'a' - 'A';
                FUNC1(ret == exp, "expected %x, got %x for C locale\n", exp, ret);
            }
            else
                FUNC1(ret == j, "expected self %x, got %x for C locale\n", j, ret);

            ret = FUNC5(j, locale);
            if (j >= 'a' && j <= 'z')
            {
                exp = j + 'A' - 'a';
                FUNC1(ret == exp, "expected %x, got %x for C locale\n", exp, ret);
            }
            else
                FUNC1(ret == j, "expected self %x, got %x for C locale\n", j, ret);
        }

        FUNC3(locale);
    }
}