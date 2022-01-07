
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int LPARAM ;
typedef int * HWND ;


 int * CreateWindowA (int,int *,int,int ,int ,int,int,int *,int *,int ,int *) ;
 int DestroyWindow (int *) ;
 int EM_SCROLLCARET ;
 int ES_MULTILINE ;
 scalar_t__ GetLastError () ;
 int RICHEDIT_CLASS20A ;
 int SendMessageA (int *,int ,int ,int ) ;
 int WM_SETTEXT ;
 int WS_HSCROLL ;
 int WS_POPUP ;
 int WS_VISIBLE ;
 int WS_VSCROLL ;
 int get_scroll_pos_y (int *) ;
 int hmoduleRichEdit ;
 int line_scroll (int *,int) ;
 int move_cursor (int *,int) ;
 int ok (int,char*,int,int) ;

__attribute__((used)) static void test_EM_SCROLLCARET(void)
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




  HWND hwndRichEdit = CreateWindowA(RICHEDIT_CLASS20A, ((void*)0),
                                   ES_MULTILINE|WS_POPUP|WS_HSCROLL|WS_VSCROLL|WS_VISIBLE,
                                   0, 0, 200, 80, ((void*)0), ((void*)0), hmoduleRichEdit, ((void*)0));
  ok(hwndRichEdit != ((void*)0), "class: %s, error: %d\n", RICHEDIT_CLASS20A, (int) GetLastError());


  SendMessageA(hwndRichEdit, EM_SCROLLCARET, 0, 0);

  SendMessageA(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)text);


  line_scroll(hwndRichEdit, 3);
  prevY = get_scroll_pos_y(hwndRichEdit);
  SendMessageA(hwndRichEdit, EM_SCROLLCARET, 0, 0);
  curY = get_scroll_pos_y(hwndRichEdit);
  ok(prevY != curY, "%d == %d\n", prevY, curY);


  move_cursor(hwndRichEdit, sizeof(text) - 1);
  line_scroll(hwndRichEdit, -3);
  prevY = get_scroll_pos_y(hwndRichEdit);
  SendMessageA(hwndRichEdit, EM_SCROLLCARET, 0, 0);
  curY = get_scroll_pos_y(hwndRichEdit);
  ok(prevY != curY, "%d == %d\n", prevY, curY);


  move_cursor(hwndRichEdit, sizeof(text) - 2);
  prevY = get_scroll_pos_y(hwndRichEdit);
  SendMessageA(hwndRichEdit, EM_SCROLLCARET, 0, 0);
  curY = get_scroll_pos_y(hwndRichEdit);
  ok(prevY == curY, "%d != %d\n", prevY, curY);


  line_scroll(hwndRichEdit, -1);
  prevY = get_scroll_pos_y(hwndRichEdit);
  SendMessageA(hwndRichEdit, EM_SCROLLCARET, 0, 0);
  curY = get_scroll_pos_y(hwndRichEdit);
  ok(prevY == curY, "%d != %d\n", prevY, curY);

  DestroyWindow(hwndRichEdit);
}
