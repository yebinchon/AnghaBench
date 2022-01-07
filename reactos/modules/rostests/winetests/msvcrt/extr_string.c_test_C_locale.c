
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int * _locale_t ;


 int ARRAY_SIZE (char const**) ;
 int LC_ALL ;
 int ok (int,char*,int,int) ;
 int * p__create_locale (int ,char const*) ;
 int p__free_locale (int *) ;
 int p__towlower_l (int,int *) ;
 int p__towupper_l (int,int *) ;
 int p_towlower (int) ;
 int p_towupper (int) ;
 int setlocale (int ,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_C_locale(void)
{
    int i, j;
    wint_t ret, exp;
    _locale_t locale;
    static const char *locales[] = { ((void*)0), "C" };


    setlocale(LC_ALL, "C");
    for (i = 0; i <= 0xffff; i++)
    {
        ret = p_towlower(i);
        if (i >= 'A' && i <= 'Z')
        {
            exp = i + 'a' - 'A';
            ok(ret == exp, "expected %x, got %x for C locale\n", exp, ret);
        }
        else
            ok(ret == i, "expected self %x, got %x for C locale\n", i, ret);

        ret = p_towupper(i);
        if (i >= 'a' && i <= 'z')
        {
            exp = i + 'A' - 'a';
            ok(ret == exp, "expected %x, got %x for C locale\n", exp, ret);
        }
        else
            ok(ret == i, "expected self %x, got %x for C locale\n", i, ret);
    }

    if (!p__towlower_l || !p__towupper_l || !p__create_locale)
    {
        win_skip("_towlower_l/_towupper_l/_create_locale not available\n");
        return;
    }

    for (i = 0; i < ARRAY_SIZE(locales); i++) {
        locale = locales[i] ? p__create_locale(LC_ALL, locales[i]) : ((void*)0);

        for (j = 0; j <= 0xffff; j++) {
            ret = p__towlower_l(j, locale);
            if (j >= 'A' && j <= 'Z')
            {
                exp = j + 'a' - 'A';
                ok(ret == exp, "expected %x, got %x for C locale\n", exp, ret);
            }
            else
                ok(ret == j, "expected self %x, got %x for C locale\n", j, ret);

            ret = p__towupper_l(j, locale);
            if (j >= 'a' && j <= 'z')
            {
                exp = j + 'A' - 'a';
                ok(ret == exp, "expected %x, got %x for C locale\n", exp, ret);
            }
            else
                ok(ret == j, "expected self %x, got %x for C locale\n", j, ret);
        }

        p__free_locale(locale);
    }
}
