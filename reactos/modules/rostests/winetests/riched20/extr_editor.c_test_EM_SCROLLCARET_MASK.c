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
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EM_SCROLLCARET ; 
 int ES_MULTILINE ; 
 scalar_t__ FUNC2 () ; 
 int RICHEDIT_CLASS20A ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int WS_HSCROLL ; 
 int WS_POPUP ; 
 int WS_VISIBLE ; 
 int WS_VSCROLL ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hmoduleRichEdit ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int,int) ; 

__attribute__((used)) static void FUNC8(void)
{
  int prevY, curY;
  const char text[] = "aa\n"
      "this is a long line of text that should be longer than the "
      "control's width\n"
      "cc\n"
      "dd\n"
      "ee\n"
      "ff\n"
      "gg\n"
      "hh\n";
  /* The richedit window height needs to be large enough vertically to fit in
   * more than two lines of text, so the new_richedit function can't be used
   * since a height of 60 was not large enough on some systems.
   */
  HWND hwndRichEdit = FUNC0(RICHEDIT_CLASS20A, NULL,
                                   ES_MULTILINE|WS_POPUP|WS_HSCROLL|WS_VSCROLL|WS_VISIBLE,
                                   0, 0, 200, 80, NULL, NULL, hmoduleRichEdit, NULL);
  FUNC7(hwndRichEdit != NULL, "class: %s, error: %d\n", RICHEDIT_CLASS20A, (int) FUNC2());

  /* Can't verify this */
  FUNC3(hwndRichEdit, EM_SCROLLCARET, 0, 0);

  FUNC3(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)text);

  /* Caret above visible window */
  FUNC5(hwndRichEdit, 3);
  prevY = FUNC4(hwndRichEdit);
  FUNC3(hwndRichEdit, EM_SCROLLCARET, 0, 0);
  curY = FUNC4(hwndRichEdit);
  FUNC7(prevY != curY, "%d == %d\n", prevY, curY);

  /* Caret below visible window */
  FUNC6(hwndRichEdit, sizeof(text) - 1);
  FUNC5(hwndRichEdit, -3);
  prevY = FUNC4(hwndRichEdit);
  FUNC3(hwndRichEdit, EM_SCROLLCARET, 0, 0);
  curY = FUNC4(hwndRichEdit);
  FUNC7(prevY != curY, "%d == %d\n", prevY, curY);

  /* Caret in visible window */
  FUNC6(hwndRichEdit, sizeof(text) - 2);
  prevY = FUNC4(hwndRichEdit);
  FUNC3(hwndRichEdit, EM_SCROLLCARET, 0, 0);
  curY = FUNC4(hwndRichEdit);
  FUNC7(prevY == curY, "%d != %d\n", prevY, curY);

  /* Caret still in visible window */
  FUNC5(hwndRichEdit, -1);
  prevY = FUNC4(hwndRichEdit);
  FUNC3(hwndRichEdit, EM_SCROLLCARET, 0, 0);
  curY = FUNC4(hwndRichEdit);
  FUNC7(prevY == curY, "%d != %d\n", prevY, curY);

  FUNC1(hwndRichEdit);
}