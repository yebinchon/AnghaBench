
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct testwindow_info {int edge; TYPE_1__ allocated_rect; TYPE_1__ desired_rect; scalar_t__ to_be_deleted; int registered; } ;
typedef int abd ;
struct TYPE_5__ {int cbSize; int uEdge; TYPE_1__ rc; int hWnd; } ;
typedef int HWND ;
typedef scalar_t__ BOOL ;
typedef TYPE_2__ APPBARDATA ;






 int ABM_QUERYPOS ;
 int ABM_SETPOS ;
 int GWLP_USERDATA ;
 scalar_t__ GetWindowLongPtrA (int ,int ) ;
 int MoveWindow (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ SHAppBarMessage (int ,TYPE_2__*) ;
 scalar_t__ TRUE ;
 int ok (int,char*,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void testwindow_setpos(HWND hwnd)
{
    struct testwindow_info* info = (struct testwindow_info*)GetWindowLongPtrA(hwnd, GWLP_USERDATA);
    APPBARDATA abd;
    BOOL ret;

    ok(info != ((void*)0), "got unexpected ABN_POSCHANGED notification\n");

    if (!info || !info->registered)
    {
        return;
    }

    if (info->to_be_deleted)
    {
        win_skip("Some Win95 and NT4 systems send messages to removed taskbars\n");
        return;
    }

    abd.cbSize = sizeof(abd);
    abd.hWnd = hwnd;
    abd.uEdge = info->edge;
    abd.rc = info->desired_rect;
    ret = SHAppBarMessage(ABM_QUERYPOS, &abd);
    ok(ret == TRUE, "SHAppBarMessage returned %i\n", ret);
    switch (info->edge)
    {
        case 131:
            ok(info->desired_rect.top == abd.rc.top, "ABM_QUERYPOS changed top of rect from %i to %i\n", info->desired_rect.top, abd.rc.top);
            abd.rc.top = abd.rc.bottom - (info->desired_rect.bottom - info->desired_rect.top);
            break;
        case 130:
            ok(info->desired_rect.right == abd.rc.right, "ABM_QUERYPOS changed right of rect from %i to %i\n", info->desired_rect.right, abd.rc.right);
            abd.rc.right = abd.rc.left + (info->desired_rect.right - info->desired_rect.left);
            break;
        case 129:
            ok(info->desired_rect.left == abd.rc.left, "ABM_QUERYPOS changed left of rect from %i to %i\n", info->desired_rect.left, abd.rc.left);
            abd.rc.left = abd.rc.right - (info->desired_rect.right - info->desired_rect.left);
            break;
        case 128:
            ok(info->desired_rect.bottom == abd.rc.bottom, "ABM_QUERYPOS changed bottom of rect from %i to %i\n", info->desired_rect.bottom, abd.rc.bottom);
            abd.rc.bottom = abd.rc.top + (info->desired_rect.bottom - info->desired_rect.top);
            break;
    }

    ret = SHAppBarMessage(ABM_SETPOS, &abd);
    ok(ret == TRUE, "SHAppBarMessage returned %i\n", ret);

    info->allocated_rect = abd.rc;
    MoveWindow(hwnd, abd.rc.left, abd.rc.top, abd.rc.right-abd.rc.left, abd.rc.bottom-abd.rc.top, TRUE);
}
