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
typedef  char wchar_t ;
typedef  scalar_t__ WORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int CT_CTYPE1 ; 
 int CT_CTYPE2 ; 
 int CT_CTYPE3 ; 
 scalar_t__ FUNC1 (int,char const*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,char const*,int,scalar_t__*) ; 
 int /*<<< orphan*/  pmemcpy_s ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    static const wchar_t str0[] = { '0', '\0' };
    static const wchar_t strA[] = { 'A', '\0' };
    static const wchar_t str_space[] = { ' ', '\0' };
    static const wchar_t str_null[] = { '\0', '\0' };
    static const wchar_t str_rand[] = { 1234, '\0' };

    const wchar_t *str[] = { str0, strA, str_space, str_null, str_rand };

    WORD out_crt, out;
    BOOL ret_crt, ret;
    int i;

    if(!&p__crtGetStringTypeW) {
        FUNC4("Skipping __crtGetStringTypeW tests\n");
        return;
    }

    if(!pmemcpy_s) {
        FUNC4("Too old version of msvcrt.dll\n");
        return;
    }

    for(i=0; i<FUNC0(str); i++) {
        ret_crt = FUNC3(0, CT_CTYPE1, str[i], 1, &out_crt);
        ret = FUNC1(CT_CTYPE1, str[i], 1, &out);
        FUNC2(ret == ret_crt, "%d) ret_crt = %d\n", i, (int)ret_crt);
        FUNC2(out == out_crt, "%d) out_crt = %x, expected %x\n", i, (int)out_crt, (int)out);

        ret_crt = FUNC3(0, CT_CTYPE2, str[i], 1, &out_crt);
        ret = FUNC1(CT_CTYPE2, str[i], 1, &out);
        FUNC2(ret == ret_crt, "%d) ret_crt = %d\n", i, (int)ret_crt);
        FUNC2(out == out_crt, "%d) out_crt = %x, expected %x\n", i, (int)out_crt, (int)out);

        ret_crt = FUNC3(0, CT_CTYPE3, str[i], 1, &out_crt);
        ret = FUNC1(CT_CTYPE3, str[i], 1, &out);
        FUNC2(ret == ret_crt, "%d) ret_crt = %d\n", i, (int)ret_crt);
        FUNC2(out == out_crt, "%d) out_crt = %x, expected %x\n", i, (int)out_crt, (int)out);
    }

    ret = FUNC3(0, 3, str[0], 1, &out);
    FUNC2(!ret, "ret == TRUE\n");
}