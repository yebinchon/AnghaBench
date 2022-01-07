
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int x; } ;
typedef TYPE_1__ POINT ;
typedef int HWND ;


 scalar_t__ BST_CHECKED ;
 scalar_t__ BST_UNCHECKED ;
 int CheckDlgButton (int ,int ,scalar_t__) ;
 TYPE_1__ GetCtrlCenter (int ) ;
 int GetDlgItem (int ,int ) ;
 scalar_t__ IsDlgButtonChecked (int ,int ) ;
 int MAKELPARAM (int ,int ) ;
 int MK_LBUTTON ;
 int SendMessage (int ,int ,int ,int ) ;
 int WM_LBUTTONDOWN ;
 int WM_LBUTTONUP ;
 int ok (int,char*) ;
 int rad1 ;
 int rad2 ;
 int rad3 ;
 int rad5 ;
 int rad6 ;
 int rad7 ;

__attribute__((used)) static void
DoTest3(HWND hwnd)
{
    HWND hCtrl;
    POINT pt;

    CheckDlgButton(hwnd, rad1, BST_CHECKED);
    CheckDlgButton(hwnd, rad5, BST_CHECKED);

    ok(IsDlgButtonChecked(hwnd, rad1) == BST_CHECKED, "\n");
    ok(IsDlgButtonChecked(hwnd, rad2) == BST_UNCHECKED, "\n");
    ok(IsDlgButtonChecked(hwnd, rad3) == BST_UNCHECKED, "\n");
    ok(IsDlgButtonChecked(hwnd, rad5) == BST_CHECKED, "\n");
    ok(IsDlgButtonChecked(hwnd, rad6) == BST_UNCHECKED, "\n");
    ok(IsDlgButtonChecked(hwnd, rad7) == BST_UNCHECKED, "\n");

    hCtrl = GetDlgItem(hwnd, rad1);
    pt = GetCtrlCenter(hCtrl);
    SendMessage(hCtrl, WM_LBUTTONDOWN, MK_LBUTTON, MAKELPARAM(pt.x, pt.y));
    SendMessage(hCtrl, WM_LBUTTONUP, MK_LBUTTON, MAKELPARAM(pt.x, pt.y));

    ok(IsDlgButtonChecked(hwnd, rad1) == BST_CHECKED, "\n");
    ok(IsDlgButtonChecked(hwnd, rad2) == BST_UNCHECKED, "\n");
    ok(IsDlgButtonChecked(hwnd, rad3) == BST_UNCHECKED, "\n");
    ok(IsDlgButtonChecked(hwnd, rad5) == BST_UNCHECKED, "\n");
    ok(IsDlgButtonChecked(hwnd, rad6) == BST_UNCHECKED, "\n");
    ok(IsDlgButtonChecked(hwnd, rad7) == BST_UNCHECKED, "\n");

    hCtrl = GetDlgItem(hwnd, rad5);
    pt = GetCtrlCenter(hCtrl);
    SendMessage(hCtrl, WM_LBUTTONDOWN, MK_LBUTTON, MAKELPARAM(pt.x, pt.y));
    SendMessage(hCtrl, WM_LBUTTONUP, MK_LBUTTON, MAKELPARAM(pt.x, pt.y));

    ok(IsDlgButtonChecked(hwnd, rad1) == BST_UNCHECKED, "\n");
    ok(IsDlgButtonChecked(hwnd, rad2) == BST_UNCHECKED, "\n");
    ok(IsDlgButtonChecked(hwnd, rad3) == BST_UNCHECKED, "\n");
    ok(IsDlgButtonChecked(hwnd, rad5) == BST_CHECKED, "\n");
    ok(IsDlgButtonChecked(hwnd, rad6) == BST_UNCHECKED, "\n");
    ok(IsDlgButtonChecked(hwnd, rad7) == BST_UNCHECKED, "\n");
}
