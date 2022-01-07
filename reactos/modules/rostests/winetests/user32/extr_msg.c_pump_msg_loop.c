
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct recvd_message {scalar_t__ message; int flags; char* descr; int lParam; int wParam; int hwnd; } ;
struct TYPE_6__ {scalar_t__ message; int lParam; int wParam; int hwnd; } ;
typedef TYPE_1__ MSG ;
typedef int HWND ;
typedef int HACCEL ;


 int DispatchMessageA (TYPE_1__*) ;
 int PM_REMOVE ;
 scalar_t__ PeekMessageA (TYPE_1__*,int ,int ,int ,int ) ;
 int TranslateAcceleratorA (int ,int ,TYPE_1__*) ;
 int TranslateMessage (TYPE_1__*) ;
 scalar_t__ WM_MOUSEMOVE ;
 scalar_t__ WM_TIMER ;
 int add_message (struct recvd_message*) ;
 scalar_t__ ignore_message (scalar_t__) ;
 int lparam ;
 int wparam ;

__attribute__((used)) static void pump_msg_loop(HWND hwnd, HACCEL hAccel)
{
    MSG msg;

    while (PeekMessageA(&msg, 0, 0, 0, PM_REMOVE))
    {
        struct recvd_message log_msg;


        if (msg.message == WM_MOUSEMOVE ||
            msg.message == WM_TIMER ||
            ignore_message( msg.message ))
            continue;

        log_msg.hwnd = msg.hwnd;
        log_msg.message = msg.message;
        log_msg.flags = wparam|lparam;
        log_msg.wParam = msg.wParam;
        log_msg.lParam = msg.lParam;
        log_msg.descr = "accel";
        add_message(&log_msg);

        if (!hAccel || !TranslateAcceleratorA(hwnd, hAccel, &msg))
        {
            TranslateMessage(&msg);
            DispatchMessageA(&msg);
        }
    }
}
