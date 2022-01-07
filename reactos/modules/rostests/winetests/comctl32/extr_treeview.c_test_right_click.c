
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int x; int y; } ;
struct TYPE_5__ {int left; int right; int top; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ POINT ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef scalar_t__ HTREEITEM ;


 int ClientToScreen (int ,TYPE_2__*) ;
 int DestroyWindow (int ) ;
 int FALSE ;
 int GetCursorPos (TYPE_2__*) ;
 int MAKELPARAM (int,int) ;
 int MK_RBUTTON ;
 int NUM_MSG_SEQUENCES ;
 int PARENT_SEQ_INDEX ;
 int PostMessageA (int ,int ,int ,int ) ;
 int SendMessageA (int ,int ,int ,int ) ;
 int SetCursorPos (int,int) ;
 int TREEVIEW_SEQ_INDEX ;
 int TRUE ;
 int TVGN_CARET ;
 int TVM_ENSUREVISIBLE ;
 int TVM_GETITEMRECT ;
 int TVM_GETNEXTITEM ;
 int TVM_SELECTITEM ;
 int WM_RBUTTONDOWN ;
 int WM_RBUTTONUP ;
 int create_treeview_control (int ) ;
 int fill_tree (int ) ;
 int flush_events () ;
 int flush_sequences (int ,int ) ;
 scalar_t__ hChild ;
 int hMainWnd ;
 scalar_t__ hRoot ;
 int ok (int,char*) ;
 int ok_sequence (int ,int ,int ,char*,int ) ;
 int parent_right_click_seq ;
 int sequences ;
 int test_right_click_seq ;

__attribute__((used)) static void test_right_click(void)
{
    HWND hTree;
    HTREEITEM selected;
    RECT rc;
    LRESULT result;
    POINT pt, orig_pos;

    hTree = create_treeview_control(0);
    fill_tree(hTree);

    SendMessageA(hTree, TVM_ENSUREVISIBLE, 0, (LPARAM)hChild);
    SendMessageA(hTree, TVM_SELECTITEM, TVGN_CARET, (LPARAM)hChild);
    selected = (HTREEITEM)SendMessageA(hTree, TVM_GETNEXTITEM, TVGN_CARET, 0);
    ok(selected == hChild, "child item not selected\n");

    *(HTREEITEM *)&rc = hRoot;
    result = SendMessageA(hTree, TVM_GETITEMRECT, TRUE, (LPARAM)&rc);
    ok(result, "TVM_GETITEMRECT failed\n");

    flush_events();

    pt.x = (rc.left + rc.right) / 2;
    pt.y = (rc.top + rc.bottom) / 2;
    ClientToScreen(hMainWnd, &pt);
    GetCursorPos(&orig_pos);
    SetCursorPos(pt.x, pt.y);

    flush_events();
    flush_sequences(sequences, NUM_MSG_SEQUENCES);

    PostMessageA(hTree, WM_RBUTTONDOWN, MK_RBUTTON, MAKELPARAM(pt.x, pt.y));
    PostMessageA(hTree, WM_RBUTTONUP, 0, MAKELPARAM(pt.x, pt.y));

    flush_events();

    ok_sequence(sequences, TREEVIEW_SEQ_INDEX, test_right_click_seq, "right click sequence", FALSE);
    ok_sequence(sequences, PARENT_SEQ_INDEX, parent_right_click_seq, "parent right click sequence", FALSE);

    selected = (HTREEITEM)SendMessageA(hTree, TVM_GETNEXTITEM, TVGN_CARET, 0);
    ok(selected == hChild, "child item should still be selected\n");

    SetCursorPos(orig_pos.x, orig_pos.y);
    DestroyWindow(hTree);
}
