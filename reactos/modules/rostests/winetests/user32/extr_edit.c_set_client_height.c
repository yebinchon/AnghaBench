
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int bottom; unsigned int top; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;


 int GetClientRect (int ,TYPE_1__*) ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOZORDER ;
 int SetWindowPos (int ,int *,int ,int ,scalar_t__,unsigned int,int) ;
 int ok (int,char*,unsigned int,unsigned int) ;

__attribute__((used)) static void set_client_height(HWND Wnd, unsigned Height)
{
    RECT ClientRect, WindowRect;

    GetWindowRect(Wnd, &WindowRect);
    GetClientRect(Wnd, &ClientRect);
    SetWindowPos(Wnd, ((void*)0), 0, 0,
                 WindowRect.right - WindowRect.left,
                 Height + (WindowRect.bottom - WindowRect.top) -
                 (ClientRect.bottom - ClientRect.top),
                 SWP_NOMOVE | SWP_NOACTIVATE | SWP_NOZORDER);



    GetWindowRect(Wnd, &WindowRect);
    SetWindowPos(Wnd, ((void*)0), 0, 0,
                 WindowRect.right - WindowRect.left + 1,
                 WindowRect.bottom - WindowRect.top + 1,
                 SWP_NOMOVE | SWP_NOACTIVATE | SWP_NOZORDER);
    SetWindowPos(Wnd, ((void*)0), 0, 0,
                 WindowRect.right - WindowRect.left,
                 WindowRect.bottom - WindowRect.top,
                 SWP_NOMOVE | SWP_NOACTIVATE | SWP_NOZORDER);

    GetClientRect(Wnd, &ClientRect);
    ok(ClientRect.bottom - ClientRect.top == Height,
        "The client height should be %d, but is %d\n",
        Height, ClientRect.bottom - ClientRect.top);
}
