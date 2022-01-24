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
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EM_GETFIRSTVISIBLELINE ; 
 int /*<<< orphan*/  EM_SCROLL ; 
#define  SB_LINEDOWN 131 
#define  SB_LINEUP 130 
#define  SB_PAGEDOWN 129 
#define  SB_PAGEUP 128 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,...) ; 

__attribute__((used)) static void FUNC4(void)
{
  int i, j;
  int r; /* return value */
  int expr; /* expected return value */
  HWND hwndRichEdit = FUNC2(NULL);
  int y_before, y_after; /* units of lines of text */

  /* test a richedit box containing a single line of text */
  FUNC1(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)"a");/* one line of text */
  expr = 0x00010000;
  for (i = 0; i < 4; i++) {
    static const int cmd[4] = { SB_PAGEDOWN, SB_PAGEUP, SB_LINEDOWN, SB_LINEUP };

    r = FUNC1(hwndRichEdit, EM_SCROLL, cmd[i], 0);
    y_after = FUNC1(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);
    FUNC3(expr == r, "EM_SCROLL improper return value returned (i == %d). "
       "Got 0x%08x, expected 0x%08x\n", i, r, expr);
    FUNC3(y_after == 0, "EM_SCROLL improper scroll. scrolled to line %d, not 1 "
       "(i == %d)\n", y_after, i);
  }

  /*
   * test a richedit box that will scroll. There are two general
   * cases: the case without any long lines and the case with a long
   * line.
   */
  for (i = 0; i < 2; i++) { /* iterate through different bodies of text */
    if (i == 0)
      FUNC1(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)"a\nb\nc\nd\ne");
    else
      FUNC1(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)
                  "a LONG LINE LONG LINE LONG LINE LONG LINE LONG LINE "
                  "LONG LINE LONG LINE LONG LINE LONG LINE LONG LINE "
                  "LONG LINE \nb\nc\nd\ne");
    for (j = 0; j < 12; j++) /* reset scroll position to top */
      FUNC1(hwndRichEdit, EM_SCROLL, SB_PAGEUP, 0);

    /* get first visible line */
    y_before = FUNC1(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);
    r = FUNC1(hwndRichEdit, EM_SCROLL, SB_PAGEDOWN, 0); /* page down */

    /* get new current first visible line */
    y_after = FUNC1(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);

    FUNC3(((r & 0xffffff00) == 0x00010000) &&
       ((r & 0x000000ff) != 0x00000000),
       "EM_SCROLL page down didn't scroll by a small positive number of "
       "lines (r == 0x%08x)\n", r);
    FUNC3(y_after > y_before, "EM_SCROLL page down not functioning "
       "(line %d scrolled to line %d\n", y_before, y_after);

    y_before = y_after;
    
    r = FUNC1(hwndRichEdit, EM_SCROLL, SB_PAGEUP, 0); /* page up */
    y_after = FUNC1(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);
    FUNC3(((r & 0xffffff00) == 0x0001ff00),
       "EM_SCROLL page up didn't scroll by a small negative number of lines "
       "(r == 0x%08x)\n", r);
    FUNC3(y_after < y_before, "EM_SCROLL page up not functioning (line "
       "%d scrolled to line %d\n", y_before, y_after);
    
    y_before = y_after;

    r = FUNC1(hwndRichEdit, EM_SCROLL, SB_LINEDOWN, 0); /* line down */

    y_after = FUNC1(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);

    FUNC3(r == 0x00010001, "EM_SCROLL line down didn't scroll by one line "
       "(r == 0x%08x)\n", r);
    FUNC3(y_after -1 == y_before, "EM_SCROLL line down didn't go down by "
       "1 line (%d scrolled to %d)\n", y_before, y_after);

    y_before = y_after;

    r = FUNC1(hwndRichEdit, EM_SCROLL, SB_LINEUP, 0); /* line up */

    y_after = FUNC1(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);

    FUNC3(r == 0x0001ffff, "EM_SCROLL line up didn't scroll by one line "
       "(r == 0x%08x)\n", r);
    FUNC3(y_after +1 == y_before, "EM_SCROLL line up didn't go up by 1 "
       "line (%d scrolled to %d)\n", y_before, y_after);

    y_before = y_after;

    r = FUNC1(hwndRichEdit, EM_SCROLL,
                    SB_LINEUP, 0); /* lineup beyond top */

    y_after = FUNC1(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);

    FUNC3(r == 0x00010000,
       "EM_SCROLL line up returned indicating movement (0x%08x)\n", r);
    FUNC3(y_before == y_after,
       "EM_SCROLL line up beyond top worked (%d)\n", y_after);

    y_before = y_after;

    r = FUNC1(hwndRichEdit, EM_SCROLL,
                    SB_PAGEUP, 0);/*page up beyond top */

    y_after = FUNC1(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);

    FUNC3(r == 0x00010000,
       "EM_SCROLL page up returned indicating movement (0x%08x)\n", r);
    FUNC3(y_before == y_after,
       "EM_SCROLL page up beyond top worked (%d)\n", y_after);

    for (j = 0; j < 12; j++) /* page down all the way to the bottom */
      FUNC1(hwndRichEdit, EM_SCROLL, SB_PAGEDOWN, 0);
    y_before = FUNC1(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);
    r = FUNC1(hwndRichEdit, EM_SCROLL,
                    SB_PAGEDOWN, 0); /* page down beyond bot */
    y_after = FUNC1(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);

    FUNC3(r == 0x00010000,
       "EM_SCROLL page down returned indicating movement (0x%08x)\n", r);
    FUNC3(y_before == y_after,
       "EM_SCROLL page down beyond bottom worked (%d -> %d)\n",
       y_before, y_after);

    y_before = FUNC1(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);
    r = FUNC1(hwndRichEdit, EM_SCROLL, SB_LINEDOWN, 0); /* line down beyond bot */
    y_after = FUNC1(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);

    FUNC3(r == 0x00010000,
       "EM_SCROLL line down returned indicating movement (0x%08x)\n", r);
    FUNC3(y_before == y_after,
       "EM_SCROLL line down beyond bottom worked (%d -> %d)\n",
       y_before, y_after);
  }
  FUNC0(hwndRichEdit);
}