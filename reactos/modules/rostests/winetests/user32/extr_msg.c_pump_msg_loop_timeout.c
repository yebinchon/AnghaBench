
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct recvd_message {scalar_t__ message; int flags; char* descr; int lParam; int wParam; scalar_t__ hwnd; } ;
struct TYPE_4__ {scalar_t__ message; int lParam; int wParam; scalar_t__ hwnd; } ;
typedef TYPE_1__ MSG ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int DispatchMessageA (TYPE_1__*) ;
 scalar_t__ FALSE ;
 int GetTickCount () ;
 int MOUSEEVENTF_MOVE ;
 int PM_REMOVE ;
 scalar_t__ PeekMessageA (TYPE_1__*,int ,int ,int ,int ) ;
 scalar_t__ WM_SYSTIMER ;
 scalar_t__ WM_TIMER ;
 int add_message (struct recvd_message*) ;
 int lparam ;
 int mouse_event (int ,int,int ,int ,int ) ;
 int sent ;
 int wparam ;

__attribute__((used)) static void pump_msg_loop_timeout(DWORD timeout, BOOL inject_mouse_move)
{
    MSG msg;
    DWORD start_ticks, end_ticks;

    start_ticks = GetTickCount();

    start_ticks += timeout / 2;

    do
    {
        while (PeekMessageA(&msg, 0, 0, 0, PM_REMOVE))
        {



            if ((msg.message == WM_TIMER || msg.message == WM_SYSTIMER) && msg.hwnd)
            {
                struct recvd_message s_msg;

                s_msg.hwnd = msg.hwnd;
                s_msg.message = msg.message;
                s_msg.flags = sent|wparam|lparam;
                s_msg.wParam = msg.wParam;
                s_msg.lParam = msg.lParam;
                s_msg.descr = "msg_loop";
                add_message(&s_msg);
            }
            DispatchMessageA(&msg);
        }

        end_ticks = GetTickCount();


        if (inject_mouse_move && start_ticks + timeout / 2 >= end_ticks)
        {
            mouse_event(MOUSEEVENTF_MOVE, -1, 0, 0, 0);
            mouse_event(MOUSEEVENTF_MOVE, 1, 0, 0, 0);

            inject_mouse_move = FALSE;
        }
    } while (start_ticks + timeout >= end_ticks);
}
