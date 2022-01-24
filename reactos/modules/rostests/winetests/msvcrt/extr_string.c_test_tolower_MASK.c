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
 int /*<<< orphan*/  CP_ACP ; 
 int EILSEQ ; 
 int /*<<< orphan*/  LCMAP_LOWERCASE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  MB_ERR_INVALID_CHARS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    WCHAR chw, lower;
    char ch, lch;
    int ret, len;

    /* test C locale when locale was never changed */
    ret = FUNC5(0x41);
    FUNC4(ret == 0x61, "ret = %x\n", ret);

    ret = FUNC5(0xF4);
    FUNC4(ret == 0xF4, "ret = %x\n", ret);

    errno = 0xdeadbeef;
    ret = FUNC5((char)0xF4);
    FUNC4(ret == (char)0xF4, "ret = %x\n", ret);
    FUNC4(errno == 0xdeadbeef, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = FUNC5((char)0xD0);
    FUNC4(ret == (char)0xD0, "ret = %x\n", ret);
    FUNC4(errno == 0xdeadbeef, "errno = %d\n", errno);

    FUNC6(LC_ALL, "C");
    errno = 0xdeadbeef;
    ret = FUNC5((char)0xF4);
    FUNC4(ret == (char)0xF4, "ret = %x\n", ret);
    FUNC4(errno == 0xdeadbeef, "errno = %d\n", errno);

    /* test C locale after setting locale */
    if(!FUNC6(LC_ALL, "us")) {
        FUNC7("skipping tolower tests that depends on locale\n");
        return;
    }
    FUNC6(LC_ALL, "C");

    ch = 0xF4;
    errno = 0xdeadbeef;
    ret = FUNC5(ch);
    if(!FUNC1(CP_ACP, MB_ERR_INVALID_CHARS, &ch, 1, &chw, 1) ||
            FUNC0(CP_ACP, LCMAP_LOWERCASE, &chw, 1, &lower, 1) != 1 ||
            (len = FUNC2(CP_ACP, 0, &lower, 1, &lch, 1, NULL, NULL)) != 1)
        len = 0;
    if(len)
        FUNC4(ret==(unsigned char)lch || FUNC3(ret==ch)/*WinXP-*/, "ret = %x\n", ret);
    else
        FUNC4(ret == ch, "ret = %x\n", ret);
    if(!len || ret==(unsigned char)lch)
        FUNC4(errno == EILSEQ, "errno = %d\n", errno);

    ch = 0xD0;
    errno = 0xdeadbeef;
    ret = FUNC5(ch);
    if(!FUNC1(CP_ACP, MB_ERR_INVALID_CHARS, &ch, 1, &chw, 1) ||
            FUNC0(CP_ACP, LCMAP_LOWERCASE, &chw, 1, &lower, 1) != 1 ||
            (len = FUNC2(CP_ACP, 0, &lower, 1, &lch, 1, NULL, NULL)) != 1)
        len = 0;
    if(len)
        FUNC4(ret==(unsigned char)lch || FUNC3(ret==ch)/*WinXP-*/, "ret = %x\n", ret);
    else
        FUNC4(ret == ch, "ret = %x\n", ret);
    if(!len || ret==(unsigned char)lch)
        FUNC4(errno == EILSEQ, "errno = %d\n", errno);

    ret = FUNC5(0xD0);
    FUNC4(ret == 0xD0, "ret = %x\n", ret);

    FUNC4(FUNC6(LC_ALL, "us") != NULL, "setlocale failed\n");

    ret = FUNC5((char)0xD0);
    FUNC4(ret == 0xF0, "ret = %x\n", ret);

    ret = FUNC5(0xD0);
    FUNC4(ret == 0xF0, "ret = %x\n", ret);

    FUNC6(LC_ALL, "C");
}