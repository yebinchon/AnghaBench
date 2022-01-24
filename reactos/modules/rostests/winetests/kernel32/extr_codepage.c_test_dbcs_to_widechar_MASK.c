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
typedef  int /*<<< orphan*/  wbuf_ok ;
typedef  int /*<<< orphan*/  wbuf_broken ;
typedef  int /*<<< orphan*/  wbuf ;
typedef  int /*<<< orphan*/  flags ;
typedef  int WCHAR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_NO_UNICODE_TRANSLATION ; 
 int /*<<< orphan*/  FUNC0 () ; 
#define  MB_COMPOSITE 131 
#define  MB_ERR_INVALID_CHARS 130 
#define  MB_PRECOMPOSED 129 
#define  MB_USEGLYPHCHARS 128 
 int FUNC1 (int,int const,char*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int const,int,...) ; 

__attribute__((used)) static void FUNC7(void)
{
    int i, count, count2;
    WCHAR wbuf[5];
    unsigned char buf[] = {0xbf, 0xb4, 0xc7, '\0', 'x'};
    static const DWORD flags[] = {
        MB_PRECOMPOSED,
        MB_COMPOSITE,

        MB_PRECOMPOSED|MB_USEGLYPHCHARS,
        MB_COMPOSITE  |MB_USEGLYPHCHARS,

        MB_PRECOMPOSED|MB_ERR_INVALID_CHARS,
        MB_COMPOSITE  |MB_ERR_INVALID_CHARS,

        MB_PRECOMPOSED|MB_ERR_INVALID_CHARS|MB_USEGLYPHCHARS,
        MB_COMPOSITE  |MB_ERR_INVALID_CHARS|MB_USEGLYPHCHARS,
    };

    for (i = 0; i < sizeof(flags)/sizeof(DWORD); ++i)
    {
        FUNC5(wbuf, 0xff, sizeof(wbuf));
        count = FUNC1(936, flags[i], (char*)&buf[0], 2, NULL, 0);
        count2 = FUNC1(936, flags[i], (char*)&buf[0], 2, wbuf, count);

        FUNC6(count == 1, "%04x: returned %d (expected 1)\n", flags[i], count);
        FUNC6(count2 == 1, "%04x: returned %d (expected 1)\n", flags[i], count2);
        FUNC6(wbuf[0] == 0x770b, "%04x: returned %04x (expected 770b)\n", flags[i], wbuf[0]);
        FUNC6(wbuf[1] == 0xffff, "%04x: returned %04x (expected ffff)\n", flags[i], wbuf[1]);
    }

    for (i = 0; i < sizeof(flags)/sizeof(DWORD); ++i)
    {
        FUNC5(wbuf, 0xff, sizeof(wbuf));
        count = FUNC1(936, flags[i], (char*)&buf[0], 3, NULL, 0);
        FUNC2( 0xdeadbeef );
        count2 = FUNC1(936, flags[i], (char*)&buf[0], 3, wbuf, count);

        if (flags[i] & MB_ERR_INVALID_CHARS)
        {
            FUNC6(count == 0, "%04x: returned %d (expected 0)\n", flags[i], count);
            FUNC6(count2 == 0, "%04x: returned %d (expected 0)\n", flags[i], count2);
            FUNC6(FUNC0() == ERROR_NO_UNICODE_TRANSLATION, "%04x: returned %d (expected %d)\n",
               flags[i], FUNC0(), ERROR_NO_UNICODE_TRANSLATION);
        }
        else
        {
            FUNC6(count == 2, "%04x: returned %d (expected 2)\n", flags[i], count);
            FUNC6(count2 == 2, "%04x: returned %d (expected 2)\n", flags[i], count2);
            FUNC6(wbuf[0] == 0x770b, "%04x: returned %04x (expected 770b)\n", flags[i], wbuf[0]);
            FUNC6(wbuf[1] == 0x003f || FUNC3(wbuf[1] == 0), /*windows xp*/
               "%04x: wrong wide char: %04x\n", flags[i], wbuf[1]);
            FUNC6(wbuf[2] == 0xffff, "%04x: returned %04x (expected ffff)\n", flags[i], wbuf[2]);
        }
    }

    /* src ends with null character */
    for (i = 0; i < sizeof(flags)/sizeof(DWORD); ++i)
    {
        FUNC5(wbuf, 0xff, sizeof(wbuf));
        count = FUNC1(936, flags[i], (char*)&buf[0], 4, NULL, 0);
        FUNC2( 0xdeadbeef );
        count2 = FUNC1(936, flags[i], (char*)&buf[0], 4, wbuf, count);
        FUNC6(count == count2, "%04x: returned %d (expected %d)\n", flags[i], count2, count);

        if (flags[i] & MB_ERR_INVALID_CHARS)
        {
            FUNC6(count == 0, "%04x: returned %d (expected 0)\n", flags[i], count);
            FUNC6(FUNC0() == ERROR_NO_UNICODE_TRANSLATION, "%04x: returned %d (expected %d)\n",
               flags[i], FUNC0(), ERROR_NO_UNICODE_TRANSLATION);
        }
        else
        {
            WCHAR wbuf_ok[]     = { 0x770b, 0x003f, '\0', 0xffff };
            WCHAR wbuf_broken[] = { 0x770b, '\0', 0xffff, 0xffff };
            FUNC6(count == 3 || FUNC3(count == 2 /*windows xp*/),
               "%04x: returned %d (expected 3)\n", flags[i], count);
            FUNC6(!FUNC4(wbuf, wbuf_ok, sizeof(wbuf_ok))
               || FUNC3(!FUNC4(wbuf, wbuf_broken, sizeof(wbuf_broken))),
               "%04x: returned %04x %04x %04x %04x (expected %04x %04x %04x %04x)\n",
               flags[i], wbuf[0], wbuf[1], wbuf[2], wbuf[3],
               wbuf_ok[0], wbuf_ok[1], wbuf_ok[2], wbuf_ok[3]);
        }
    }

    /* src has null character, but not ends with it */
    for (i = 0; i < sizeof(flags)/sizeof(DWORD); ++i)
    {
        FUNC5(wbuf, 0xff, sizeof(wbuf));
        count = FUNC1(936, flags[i], (char*)&buf[0], 5, NULL, 0);
        FUNC2( 0xdeadbeef );
        count2 = FUNC1(936, flags[i], (char*)&buf[0], 5, wbuf, count);
        FUNC6(count == count2, "%04x: returned %d (expected %d)\n", flags[i], count2, count);

        if (flags[i] & MB_ERR_INVALID_CHARS)
        {
            FUNC6(count == 0, "%04x: returned %d (expected 0)\n", flags[i], count);
            FUNC6(FUNC0() == ERROR_NO_UNICODE_TRANSLATION, "%04x: returned %d (expected %d)\n",
               flags[i], FUNC0(), ERROR_NO_UNICODE_TRANSLATION);
        }
        else
        {
            WCHAR wbuf_ok[]     = { 0x770b, 0x003f, '\0', 'x', 0xffff };
            WCHAR wbuf_broken[] = { 0x770b, '\0', 'x', 0xffff, 0xffff };
            FUNC6(count == 4 || FUNC3(count == 3),
               "%04x: returned %d (expected 4)\n", flags[i], count);
            FUNC6(!FUNC4(wbuf, wbuf_ok, sizeof(wbuf_ok))
               || FUNC3(!FUNC4(wbuf, wbuf_broken, sizeof(wbuf_broken))),
               "%04x: returned %04x %04x %04x %04x %04x (expected %04x %04x %04x %04x %04x)\n",
               flags[i], wbuf[0], wbuf[1], wbuf[2], wbuf[3], wbuf[4],
               wbuf_ok[0], wbuf_ok[1], wbuf_ok[2], wbuf_ok[3], wbuf_ok[4]);
        }
    }
}