
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef int HWND ;


 int DestroyWindow (int ) ;
 int EM_GETFIRSTVISIBLELINE ;
 int EM_SCROLL ;




 int SendMessageA (int ,int ,int const,int ) ;
 int WM_SETTEXT ;
 int new_richedit (int *) ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static void test_EM_SCROLL(void)
{
  int i, j;
  int r;
  int expr;
  HWND hwndRichEdit = new_richedit(((void*)0));
  int y_before, y_after;


  SendMessageA(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)"a");
  expr = 0x00010000;
  for (i = 0; i < 4; i++) {
    static const int cmd[4] = { 129, 128, 131, 130 };

    r = SendMessageA(hwndRichEdit, EM_SCROLL, cmd[i], 0);
    y_after = SendMessageA(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);
    ok(expr == r, "EM_SCROLL improper return value returned (i == %d). "
       "Got 0x%08x, expected 0x%08x\n", i, r, expr);
    ok(y_after == 0, "EM_SCROLL improper scroll. scrolled to line %d, not 1 "
       "(i == %d)\n", y_after, i);
  }






  for (i = 0; i < 2; i++) {
    if (i == 0)
      SendMessageA(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)"a\nb\nc\nd\ne");
    else
      SendMessageA(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)
                  "a LONG LINE LONG LINE LONG LINE LONG LINE LONG LINE "
                  "LONG LINE LONG LINE LONG LINE LONG LINE LONG LINE "
                  "LONG LINE \nb\nc\nd\ne");
    for (j = 0; j < 12; j++)
      SendMessageA(hwndRichEdit, EM_SCROLL, 128, 0);


    y_before = SendMessageA(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);
    r = SendMessageA(hwndRichEdit, EM_SCROLL, 129, 0);


    y_after = SendMessageA(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);

    ok(((r & 0xffffff00) == 0x00010000) &&
       ((r & 0x000000ff) != 0x00000000),
       "EM_SCROLL page down didn't scroll by a small positive number of "
       "lines (r == 0x%08x)\n", r);
    ok(y_after > y_before, "EM_SCROLL page down not functioning "
       "(line %d scrolled to line %d\n", y_before, y_after);

    y_before = y_after;

    r = SendMessageA(hwndRichEdit, EM_SCROLL, 128, 0);
    y_after = SendMessageA(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);
    ok(((r & 0xffffff00) == 0x0001ff00),
       "EM_SCROLL page up didn't scroll by a small negative number of lines "
       "(r == 0x%08x)\n", r);
    ok(y_after < y_before, "EM_SCROLL page up not functioning (line "
       "%d scrolled to line %d\n", y_before, y_after);

    y_before = y_after;

    r = SendMessageA(hwndRichEdit, EM_SCROLL, 131, 0);

    y_after = SendMessageA(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);

    ok(r == 0x00010001, "EM_SCROLL line down didn't scroll by one line "
       "(r == 0x%08x)\n", r);
    ok(y_after -1 == y_before, "EM_SCROLL line down didn't go down by "
       "1 line (%d scrolled to %d)\n", y_before, y_after);

    y_before = y_after;

    r = SendMessageA(hwndRichEdit, EM_SCROLL, 130, 0);

    y_after = SendMessageA(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);

    ok(r == 0x0001ffff, "EM_SCROLL line up didn't scroll by one line "
       "(r == 0x%08x)\n", r);
    ok(y_after +1 == y_before, "EM_SCROLL line up didn't go up by 1 "
       "line (%d scrolled to %d)\n", y_before, y_after);

    y_before = y_after;

    r = SendMessageA(hwndRichEdit, EM_SCROLL,
                    130, 0);

    y_after = SendMessageA(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);

    ok(r == 0x00010000,
       "EM_SCROLL line up returned indicating movement (0x%08x)\n", r);
    ok(y_before == y_after,
       "EM_SCROLL line up beyond top worked (%d)\n", y_after);

    y_before = y_after;

    r = SendMessageA(hwndRichEdit, EM_SCROLL,
                    128, 0);

    y_after = SendMessageA(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);

    ok(r == 0x00010000,
       "EM_SCROLL page up returned indicating movement (0x%08x)\n", r);
    ok(y_before == y_after,
       "EM_SCROLL page up beyond top worked (%d)\n", y_after);

    for (j = 0; j < 12; j++)
      SendMessageA(hwndRichEdit, EM_SCROLL, 129, 0);
    y_before = SendMessageA(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);
    r = SendMessageA(hwndRichEdit, EM_SCROLL,
                    129, 0);
    y_after = SendMessageA(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);

    ok(r == 0x00010000,
       "EM_SCROLL page down returned indicating movement (0x%08x)\n", r);
    ok(y_before == y_after,
       "EM_SCROLL page down beyond bottom worked (%d -> %d)\n",
       y_before, y_after);

    y_before = SendMessageA(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);
    r = SendMessageA(hwndRichEdit, EM_SCROLL, 131, 0);
    y_after = SendMessageA(hwndRichEdit, EM_GETFIRSTVISIBLELINE, 0, 0);

    ok(r == 0x00010000,
       "EM_SCROLL line down returned indicating movement (0x%08x)\n", r);
    ok(y_before == y_after,
       "EM_SCROLL line down beyond bottom worked (%d -> %d)\n",
       y_before, y_after);
  }
  DestroyWindow(hwndRichEdit);
}
