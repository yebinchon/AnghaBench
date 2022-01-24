#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ X; scalar_t__ Y; } ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  TYPE_1__ COORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__) ; 

__attribute__((used)) static void FUNC4(HANDLE hCon)
{
    static const char	emptybuf[16];
    COORD		c;
    DWORD		len;

    c.X = c.Y = 0;
    FUNC2(FUNC0(hCon, c) != 0, "Cursor in upper-left\n");

    len = -1;
    FUNC2(FUNC1(hCon, NULL, 0, &len, NULL) != 0 && len == 0, "WriteConsole\n");
    FUNC3(hCon, c);

    /* Passing a NULL lpBuffer with sufficiently large non-zero length succeeds
     * on native Windows and result in memory-like contents being written to
     * the console. Calling WriteConsoleW like this will crash on Wine. */
    if (0)
    {
        len = -1;
        FUNC2(!FUNC1(hCon, NULL, 16, &len, NULL) && len == -1, "WriteConsole\n");
        FUNC3(hCon, c);

        /* Cursor advances for this call. */
        len = -1;
        FUNC2(FUNC1(hCon, NULL, 128, &len, NULL) != 0 && len == 128, "WriteConsole\n");
    }

    len = -1;
    FUNC2(FUNC1(hCon, emptybuf, 0, &len, NULL) != 0 && len == 0, "WriteConsole\n");
    FUNC3(hCon, c);

    /* WriteConsole does not halt on a null terminator and is happy to write
     * memory contents beyond the actual size of the buffer. */
    len = -1;
    FUNC2(FUNC1(hCon, emptybuf, 16, &len, NULL) != 0 && len == 16, "WriteConsole\n");
    c.X += 16;
    FUNC3(hCon, c);
}