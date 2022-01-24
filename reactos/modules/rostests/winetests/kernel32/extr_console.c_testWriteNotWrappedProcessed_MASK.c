#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WORD ;
struct TYPE_7__ {int X; int Y; } ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int const DWORD ;
typedef  TYPE_1__ COORD ;

/* Variables and functions */
 scalar_t__ DEFAULT_ATTRIB ; 
 int const ENABLE_PROCESSED_OUTPUT ; 
 int const ENABLE_WRAP_AT_EOL_OUTPUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int,TYPE_1__,int const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int const) ; 
 scalar_t__ TEST_ATTRIB ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,int const,int const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__,char const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__) ; 
 char const* FUNC8 (char const*,char) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(HANDLE hCon, COORD sbSize)
{
    COORD		c;
    DWORD		len, mode;
    const char*		mytest = "abcd\nf\tg";
    const int	mylen = FUNC9(mytest);
    const int	mylen2 = FUNC8(mytest, '\n') - mytest;
    int			p;
    WORD                attr;

    FUNC5(FUNC0(hCon, &mode) && FUNC3(hCon, (mode | ENABLE_PROCESSED_OUTPUT) & ~ENABLE_WRAP_AT_EOL_OUTPUT),
       "clearing wrap at EOL & setting processed output\n");

    /* write line, wrapping disabled, buffer exceeds sb width */
    c.X = sbSize.X - 5; c.Y = 0;
    FUNC5(FUNC2(hCon, c) != 0, "Cursor in upper-left-5\n");

    FUNC5(FUNC4(hCon, mytest, mylen, &len, NULL) != 0 && len == mylen, "WriteConsole\n");
    c.Y = 0;
    for (c.X = sbSize.X - 5; c.X < sbSize.X - 1; c.X++)
    {
        FUNC6(hCon, c, mytest[c.X - sbSize.X + 5], TEST_ATTRIB);
    }

    FUNC1(hCon, &attr, 1, c, &len);
    /* Win9x and WinMe change the attribs for '\n' up to 'f' */
    if (attr == TEST_ATTRIB)
    {
        FUNC10("Win9x/WinMe don't respect ~ENABLE_WRAP_AT_EOL_OUTPUT\n");
        return;
    }

    FUNC6(hCon, c, ' ', DEFAULT_ATTRIB);

    c.X = 0; c.Y++;
    FUNC6(hCon, c, mytest[5], TEST_ATTRIB);
    for (c.X = 1; c.X < 8; c.X++)
        FUNC6(hCon, c, ' ', TEST_ATTRIB);
    FUNC6(hCon, c, mytest[7], TEST_ATTRIB);
    c.X++;
    FUNC6(hCon, c, ' ', DEFAULT_ATTRIB);

    FUNC7(hCon, c);

    /* write line, wrapping disabled, strings end on end of line */
    c.X = sbSize.X - 4; c.Y = 0;
    FUNC5(FUNC2(hCon, c) != 0, "Cursor in upper-left-4\n");

    FUNC5(FUNC4(hCon, mytest, mylen, &len, NULL) != 0 && len == mylen, "WriteConsole\n");
    c.Y = 0;
    for (c.X = sbSize.X - 4; c.X < sbSize.X; c.X++)
    {
        FUNC6(hCon, c, mytest[c.X - sbSize.X + 4], TEST_ATTRIB);
    }
    c.X = 0; c.Y++;
    FUNC6(hCon, c, mytest[5], TEST_ATTRIB);
    for (c.X = 1; c.X < 8; c.X++)
        FUNC6(hCon, c, ' ', TEST_ATTRIB);
    FUNC6(hCon, c, mytest[7], TEST_ATTRIB);
    c.X++;
    FUNC6(hCon, c, ' ', DEFAULT_ATTRIB);

    FUNC7(hCon, c);

    /* write line, wrapping disabled, strings end after end of line */
    c.X = sbSize.X - 3; c.Y = 0;
    FUNC5(FUNC2(hCon, c) != 0, "Cursor in upper-left-4\n");

    FUNC5(FUNC4(hCon, mytest, mylen, &len, NULL) != 0 && len == mylen, "WriteConsole\n");
    c.Y = 0;
    for (p = mylen2 - 3; p < mylen2; p++)
    {
        c.X = sbSize.X - 3 + p % 3;
        FUNC6(hCon, c, mytest[p], TEST_ATTRIB);
    }
    c.X = 0; c.Y = 1;
    FUNC6(hCon, c, mytest[5], TEST_ATTRIB);
    for (c.X = 1; c.X < 8; c.X++)
        FUNC6(hCon, c, ' ', TEST_ATTRIB);
    FUNC6(hCon, c, mytest[7], TEST_ATTRIB);
    c.X++;
    FUNC6(hCon, c, ' ', DEFAULT_ATTRIB);

    FUNC7(hCon, c);
}