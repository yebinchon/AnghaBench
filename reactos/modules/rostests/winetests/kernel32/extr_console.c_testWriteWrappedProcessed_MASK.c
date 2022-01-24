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
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(HANDLE hCon, COORD sbSize)
{
    COORD		c;
    DWORD		len, mode;
    const char*		mytest = "abcd\nf\tg";
    const int	mylen = FUNC8(mytest);
    int			p;
    WORD                attr;

    FUNC5(FUNC0(hCon, &mode) && FUNC3(hCon, mode | (ENABLE_WRAP_AT_EOL_OUTPUT|ENABLE_PROCESSED_OUTPUT)),
       "setting wrap at EOL & processed output\n");

    /* write line, wrapping enabled, buffer doesn't exceed sb width */
    c.X = sbSize.X - 9; c.Y = 0;
    FUNC5(FUNC2(hCon, c) != 0, "Cursor in upper-left-9\n");

    FUNC5(FUNC4(hCon, mytest, mylen, &len, NULL) != 0 && len == mylen, "WriteConsole\n");
    for (p = 0; p < 4; p++)
    {
        c.X = sbSize.X - 9 + p;
        FUNC6(hCon, c, mytest[p], TEST_ATTRIB);
    }
    c.X = sbSize.X - 9 + p;
    FUNC1(hCon, &attr, 1, c, &len);
    if (attr == TEST_ATTRIB)
        FUNC9("Win9x/WinMe changes attribs for '\\n' up to 'f'\n");
    else
        FUNC6(hCon, c, ' ', DEFAULT_ATTRIB);
    c.X = 0; c.Y++;
    FUNC6(hCon, c, mytest[5], TEST_ATTRIB);
    for (c.X = 1; c.X < 8; c.X++)
        FUNC6(hCon, c, ' ', TEST_ATTRIB);
    FUNC6(hCon, c, mytest[7], TEST_ATTRIB);
    c.X++;
    FUNC6(hCon, c, ' ', DEFAULT_ATTRIB);
    FUNC7(hCon, c);

    /* write line, wrapping enabled, buffer does exceed sb width */
    c.X = sbSize.X - 3; c.Y = 2;
    FUNC5(FUNC2(hCon, c) != 0, "Cursor in upper-left-3\n");

    FUNC5(FUNC4(hCon, mytest, mylen, &len, NULL) != 0 && len == mylen, "WriteConsole\n");
    for (p = 0; p < 3; p++)
    {
        c.X = sbSize.X - 3 + p;
        FUNC6(hCon, c, mytest[p], TEST_ATTRIB);
    }
    c.X = 0; c.Y++;
    FUNC6(hCon, c, mytest[3], TEST_ATTRIB);
    c.X++;
    FUNC1(hCon, &attr, 1, c, &len);
    if (attr == TEST_ATTRIB)
        FUNC9("Win9x/WinMe changes attribs for '\\n' up to 'f'\n");
    else
        FUNC6(hCon, c, ' ', DEFAULT_ATTRIB);

    c.X = 0; c.Y++;
    FUNC6(hCon, c, mytest[5], TEST_ATTRIB);
    for (c.X = 1; c.X < 8; c.X++)
        FUNC6(hCon, c, ' ', TEST_ATTRIB);
    FUNC6(hCon, c, mytest[7], TEST_ATTRIB);
    c.X++;
    FUNC6(hCon, c, ' ', DEFAULT_ATTRIB);
    FUNC7(hCon, c);
}