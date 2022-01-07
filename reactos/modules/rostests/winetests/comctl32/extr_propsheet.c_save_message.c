
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int message; int flags; int id; int lParam; int wParam; int member_0; } ;
typedef int WPARAM ;
typedef int UINT ;
typedef int LPARAM ;
typedef int INT ;
typedef int HWND ;


 int PROPSHEET_SEQ_INDEX ;
 int WM_ERASEBKGND ;
 int WM_GETICON ;
 int WM_GETTEXT ;
 int WM_IME_NOTIFY ;
 int WM_IME_SETCONTEXT ;
 int WM_MOUSEFIRST ;
 int WM_MOUSEHWHEEL ;
 int WM_NCCREATE ;
 int WM_NCMBUTTONDBLCLK ;
 int WM_PAINT ;
 int WM_SETCURSOR ;
 int WM_USER ;
 int add_message (int ,int ,struct message*) ;
 int id ;
 int lparam ;
 int sent ;
 int sequences ;
 int wparam ;

__attribute__((used)) static void save_message(HWND hwnd, UINT message, WPARAM wParam, LPARAM lParam, INT receiver)
{
    struct message msg = { 0 };

    if (message < WM_USER &&
        message != WM_GETICON &&
        message != WM_GETTEXT &&
        message != WM_IME_SETCONTEXT &&
        message != WM_IME_NOTIFY &&
        message != WM_PAINT &&
        message != WM_ERASEBKGND &&
        message != WM_SETCURSOR &&
        (message < WM_NCCREATE || message > WM_NCMBUTTONDBLCLK) &&
        (message < WM_MOUSEFIRST || message > WM_MOUSEHWHEEL) &&
        message != 0x90)
    {
        msg.message = message;
        msg.flags = sent|wparam|lparam|id;
        msg.wParam = wParam;
        msg.lParam = lParam;
        msg.id = receiver;
        add_message(sequences, PROPSHEET_SEQ_INDEX, &msg);
    }
}
