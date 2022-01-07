
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cy; int cx; int y; int x; int hwndInsertAfter; } ;
typedef TYPE_1__ WINDOWPOS ;
struct TYPE_4__ {TYPE_1__* pwpos; int * prc; } ;
typedef int RECT ;
typedef int LPARAM ;
typedef int * HWND ;
typedef TYPE_2__ HDLAYOUT ;


 int * CreateWindowExA (int ,int ,int *,int,int ,int ,int ,int ,int ,int *,int *,int *) ;
 int GetClientRect (int ,int *) ;
 int HDM_LAYOUT ;
 int HDS_BUTTONS ;
 int HDS_HORZ ;
 int SW_SHOW ;
 int SendMessageA (int *,int ,int ,int ) ;
 int SetWindowPos (int *,int ,int ,int ,int ,int ,int ) ;
 int ShowWindow (int ,int ) ;
 int WC_HEADERA ;
 int WS_BORDER ;
 int WS_CHILD ;
 int WS_VISIBLE ;
 int hHeaderParentWnd ;
 int ok (int ,char*) ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static HWND create_header_control (void)
{
    HWND handle;
    HDLAYOUT hlayout;
    RECT rectwin;
    WINDOWPOS winpos;

    handle = CreateWindowExA(0, WC_HEADERA, ((void*)0),
        WS_CHILD|WS_BORDER|WS_VISIBLE|HDS_BUTTONS|HDS_HORZ,
        0, 0, 0, 0,
        hHeaderParentWnd, ((void*)0), ((void*)0), ((void*)0));
    ok(handle != ((void*)0), "failed to create header window\n");

    if (winetest_interactive)
 ShowWindow (hHeaderParentWnd, SW_SHOW);

    GetClientRect(hHeaderParentWnd,&rectwin);
    hlayout.prc = &rectwin;
    hlayout.pwpos = &winpos;
    SendMessageA(handle, HDM_LAYOUT, 0, (LPARAM)&hlayout);
    SetWindowPos(handle, winpos.hwndInsertAfter, winpos.x, winpos.y,
                 winpos.cx, winpos.cy, 0);

    return handle;
}
