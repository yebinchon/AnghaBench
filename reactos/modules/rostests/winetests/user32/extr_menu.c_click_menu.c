
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct menu_item_pair_s {size_t uMenu; int uItem; } ;
typedef int i ;
struct TYPE_10__ {int left; int top; } ;
struct TYPE_7__ {int dx; int dy; int dwFlags; } ;
struct TYPE_8__ {TYPE_1__ mi; } ;
struct TYPE_9__ {TYPE_2__ u; int type; } ;
typedef TYPE_3__ TEST_INPUT ;
typedef TYPE_4__ RECT ;
typedef int MSG ;
typedef int INPUT ;
typedef int HMENU ;
typedef int * HANDLE ;
typedef scalar_t__ BOOL ;


 int DispatchMessageA (int *) ;
 scalar_t__ FALSE ;
 scalar_t__ GetMenuItemRect (int *,int ,int ,TYPE_4__*) ;
 int GetSystemMetrics (int ) ;
 int INPUT_MOUSE ;
 int MOUSEEVENTF_ABSOLUTE ;
 int MOUSEEVENTF_LEFTDOWN ;
 int MOUSEEVENTF_LEFTUP ;
 int MOUSEEVENTF_MOVE ;
 int PM_REMOVE ;
 scalar_t__ PeekMessageA (int *,int ,int ,int ,int ) ;
 int SM_CXSCREEN ;
 int SM_CYSCREEN ;
 int * hMenus ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ pSendInput (int,int *,int) ;

__attribute__((used)) static BOOL click_menu(HANDLE hWnd, struct menu_item_pair_s *mi)
{
    HMENU hMenu = hMenus[mi->uMenu];
    TEST_INPUT i[3];
    MSG msg;
    RECT r;
    int screen_w = GetSystemMetrics(SM_CXSCREEN);
    int screen_h = GetSystemMetrics(SM_CYSCREEN);
    BOOL ret = GetMenuItemRect(mi->uMenu > 2 ? ((void*)0) : hWnd, hMenu, mi->uItem, &r);
    if(!ret) return FALSE;

    memset(i, 0, sizeof(i));
    i[0].type = i[1].type = i[2].type = INPUT_MOUSE;
    i[0].u.mi.dx = i[1].u.mi.dx = i[2].u.mi.dx
            = ((r.left + 5) * 65535) / screen_w;
    i[0].u.mi.dy = i[1].u.mi.dy = i[2].u.mi.dy
            = ((r.top + 5) * 65535) / screen_h;
    i[0].u.mi.dwFlags = i[1].u.mi.dwFlags = i[2].u.mi.dwFlags
            = MOUSEEVENTF_ABSOLUTE;
    i[0].u.mi.dwFlags |= MOUSEEVENTF_MOVE;
    i[1].u.mi.dwFlags |= MOUSEEVENTF_LEFTDOWN;
    i[2].u.mi.dwFlags |= MOUSEEVENTF_LEFTUP;
    ret = pSendInput(3, (INPUT *) i, sizeof(INPUT));


    while (PeekMessageA( &msg, 0, 0, 0, PM_REMOVE )) DispatchMessageA( &msg );
    return ret;
}
