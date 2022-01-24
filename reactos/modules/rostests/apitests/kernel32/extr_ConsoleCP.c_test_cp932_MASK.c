#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
typedef  int WCHAR ;
struct TYPE_10__ {int X; int Y; } ;
struct TYPE_12__ {TYPE_1__ dwSize; } ;
struct TYPE_11__ {int X; int Y; } ;
typedef  void* SHORT ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  TYPE_2__ COORD ;
typedef  TYPE_3__ CONSOLE_SCREEN_BUFFER_INFO ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int ATTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,TYPE_2__,int*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int,TYPE_2__,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int,TYPE_2__,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *) ; 
 int ideograph_space ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,...) ; 
 int /*<<< orphan*/  u0414 ; 
 int /*<<< orphan*/  u9580 ; 

__attribute__((used)) static void FUNC16(HANDLE hConOut)
{
    BOOL ret;
    DWORD oldcp;
    int n;
    DWORD len;
    COORD c;
    CONSOLE_SCREEN_BUFFER_INFO csbi;
    int count;
    WCHAR str[32];
    WORD attr;

    if (!FUNC4(932))
    {
        FUNC14("Codepage 932 not available\n");
        return;
    }

    /* Set code page */
    oldcp = FUNC1();
    FUNC9(0xdeadbeef);
    ret = FUNC8(932);
    if (!ret)
    {
        FUNC14("SetConsoleOutputCP failed with last error %lu\n", FUNC3());
        return;
    }

    /* Get info */
    ret = FUNC2(hConOut, &csbi);
    FUNC12(ret, "GetConsoleScreenBufferInfo failed\n");
    FUNC15("csbi.dwSize.X:%d, csbi.dwSize.Y:%d\n", csbi.dwSize.X, csbi.dwSize.Y);
    count = csbi.dwSize.X * 3 / 2;
    FUNC15("count: %d\n", count);

    /* "\u0414" */
    {
        /* Output u0414 "count" times at (0,0) */
        c.X = c.Y = 0;
        FUNC7(hConOut, c);
        FUNC13(hConOut, c);
        for (n = 0; n < count; ++n)
        {
            ret = FUNC10(hConOut, u0414, FUNC11(u0414), &len, NULL);
            FUNC12(ret && len == FUNC11(u0414), "WriteConsoleW failed\n");
        }

        /* Check cursor */
        FUNC2(hConOut, &csbi);
        len = count * 2;     /* u0414 is fullwidth in Japanese */
        c.X = (SHORT)(len % csbi.dwSize.X);
        c.Y = (SHORT)(len / csbi.dwSize.X);
        FUNC13(hConOut, c);

        /* Read characters at (0,0) */
        c.X = c.Y = 0;
        ret = FUNC6(hConOut, str, 3 * sizeof(WCHAR), c, &len);
        FUNC12(ret, "ReadConsoleOutputCharacterW failed\n");
        FUNC12(len == 3, "len was: %ld\n", len);
        FUNC12(str[0] == 0x414, "str[0] was: 0x%04X\n", str[0]);
        FUNC12(str[1] == 0x414, "str[1] was: 0x%04X\n", str[1]);
        FUNC12(str[2] == 0x414, "str[2] was: 0x%04X\n", str[2]);

        /* Check cursor */
        c.X = 1;
        c.Y = 0;
        ret = FUNC7(hConOut, c);
        FUNC12(ret, "SetConsoleCursorPosition failed\n");
        FUNC13(hConOut, c);

        /* Fill by space */
        c.X = c.Y = 0;
        FUNC0(hConOut, L' ', csbi.dwSize.X * csbi.dwSize.Y, c, &len);

        /* Output u0414 "count" times at (1,0) */
        c.X = 1;
        c.Y = 0;
        FUNC7(hConOut, c);
        FUNC13(hConOut, c);
        for (n = 0; n < count; ++n)
        {
            ret = FUNC10(hConOut, u0414, FUNC11(u0414), &len, NULL);
            FUNC12(ret && len == FUNC11(u0414), "WriteConsoleW failed\n");
        }

        /* Check cursor */
        len = csbi.dwSize.X + (count - (csbi.dwSize.X - 1) / 2) * 2;
        c.X = (SHORT)(len % csbi.dwSize.X);
        c.Y = (SHORT)(len / csbi.dwSize.X);
        FUNC13(hConOut, c);

        /* Read characters at (0,0) */
        c.X = 0;
        c.Y = 0;
        ret = FUNC6(hConOut, str, 3 * sizeof(WCHAR), c, &len);
        FUNC12(ret, "ReadConsoleOutputCharacterW failed\n");
        FUNC12(len == 4, "len was: %ld\n", len);
        FUNC12(str[0] == L' ', "str[0] was: 0x%04X\n", str[0]);
        FUNC12(str[1] == 0x414, "str[1] was: 0x%04X\n", str[1]);
        FUNC12(str[2] == 0x414, "str[2] was: 0x%04X\n", str[2]);
    }

    /* "\u9580" */
    {
        /* Output u9580 "count" times at (0,0) */
        c.X = c.Y = 0;
        FUNC7(hConOut, c);
        FUNC13(hConOut, c);
        for (n = 0; n < count; ++n)
        {
            ret = FUNC10(hConOut, u9580, FUNC11(u9580), &len, NULL);
            FUNC12(ret && len == FUNC11(u9580), "WriteConsoleW failed\n");
        }

        /* Check cursor */
        len = count * 2;     /* u9580 is fullwidth in Japanese */
        c.X = (SHORT)(len % csbi.dwSize.X);
        c.Y = (SHORT)(len / csbi.dwSize.X);
        FUNC13(hConOut, c);

        /* Check cursor */
        c.X = 1;
        c.Y = 0;
        ret = FUNC7(hConOut, c);
        FUNC12(ret, "SetConsoleCursorPosition failed\n");
        FUNC13(hConOut, c);

        /* Fill by space */
        c.X = c.Y = 0;
        ret = FUNC0(hConOut, L' ', csbi.dwSize.X * csbi.dwSize.Y, c, &len);
        FUNC12(ret, "FillConsoleOutputCharacterW failed\n");
        FUNC12(len == csbi.dwSize.X * csbi.dwSize.Y, "len was: %ld\n", len);

        /* Output u9580 "count" times at (1,0) */
        c.X = 1;
        c.Y = 0;
        FUNC7(hConOut, c);
        FUNC13(hConOut, c);
        for (n = 0; n < count; ++n)
        {
            ret = FUNC10(hConOut, u9580, FUNC11(u9580), &len, NULL);
            FUNC12(ret && len == FUNC11(u9580), "WriteConsoleW failed\n");
        }

        /* Check cursor */
        len = csbi.dwSize.X + (count - (csbi.dwSize.X - 1) / 2) * 2;
        c.X = (SHORT)(len % csbi.dwSize.X);
        c.Y = (SHORT)(len / csbi.dwSize.X);
        FUNC13(hConOut, c);

        /* Fill by ideograph space */
        c.X = c.Y = 0;
        ret = FUNC0(hConOut, ideograph_space, csbi.dwSize.X * csbi.dwSize.Y, c, &len);
        FUNC12(ret, "FillConsoleOutputCharacterW failed\n");
        FUNC12(len == csbi.dwSize.X * csbi.dwSize.Y, "len was: %ld\n", len);

        /* Read characters at (0,0) */
        c.X = c.Y = 0;
        ret = FUNC6(hConOut, str, 3 * sizeof(WCHAR), c, &len);
        FUNC12(ret, "ReadConsoleOutputCharacterW failed\n");
        FUNC12(len == 3, "len was: %ld\n", len);
        FUNC12(str[0] == ideograph_space, "str[0] was: 0x%04X\n", str[0]);
        FUNC12(str[1] == ideograph_space, "str[1] was: 0x%04X\n", str[1]);
        FUNC12(str[2] == ideograph_space, "str[2] was: 0x%04X\n", str[2]);

        /* Read attr */
        ret = FUNC5(hConOut, &attr, 1, c, &len);
        FUNC12(ret, "ReadConsoleOutputAttribute failed\n");
        FUNC12(attr == ATTR, "attr was: %d\n", attr);
        FUNC12(len == 1, "len was %ld\n", len);

        /* Output u9580 "count" once at (1,0) */
        c.X = 1;
        c.Y = 0;
        FUNC7(hConOut, c);
        FUNC13(hConOut, c);
        ret = FUNC10(hConOut, u9580, FUNC11(u9580), &len, NULL);
        FUNC12(ret && len == FUNC11(u9580), "WriteConsoleW failed\n");

        /* Read attr */
        ret = FUNC5(hConOut, &attr, 1, c, &len);
        FUNC12(ret, "ReadConsoleOutputAttribute failed\n");
        FUNC12(attr == ATTR, "attr was: %d\n", attr);
        FUNC12(len == 1, "len was %ld\n", len);

        /* Check cursor */
        c.X = 3;
        c.Y = 0;
        FUNC13(hConOut, c);

        /* Read characters */
        c.X = c.Y = 0;
        ret = FUNC6(hConOut, str, 3 * sizeof(WCHAR), c, &len);
        FUNC12(ret, "ReadConsoleOutputCharacterW failed\n");
        FUNC12(len == 4, "len was: %ld\n", len);
        FUNC12(str[0] == L' ', "str[0] was: 0x%04X\n", str[0]);
        FUNC12(str[1] == 0x9580, "str[1] was: 0x%04X\n", str[1]);
        FUNC12(str[2] == L' ', "str[2] was: 0x%04X\n", str[2]);
    }

    /* Restore code page */
    FUNC8(oldcp);
}