
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int HWND ;


 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int GetParent (int ) ;
 int IDC_APPLY_BUTTON ;
 int IsWindowEnabled (int ) ;
 int KillTimer (int ,int ) ;
 int PSBTN_OK ;
 int PropSheet_Changed (int ,int ) ;
 int PropSheet_PressButton (int ,int ) ;
 int PropSheet_UnChanged (int ,int ) ;
 int TRUE ;
 int ok_int (int ,int ) ;
 int s_bNotified ;

__attribute__((used)) static void OnTimer(HWND hwnd, UINT id)
{
    HWND hwndParent, hwndApply;

    KillTimer(hwnd, id);

    ok_int(s_bNotified, TRUE);

    hwndParent = GetParent(hwnd);
    hwndApply = GetDlgItem(hwndParent, IDC_APPLY_BUTTON);
    ok_int(IsWindowEnabled(hwndApply), FALSE);

    PropSheet_Changed(hwndParent, hwnd);
    ok_int(IsWindowEnabled(hwndApply), TRUE);

    PropSheet_UnChanged(hwndParent, hwnd);
    ok_int(IsWindowEnabled(hwndApply), FALSE);

    PropSheet_PressButton(hwndParent, PSBTN_OK);
}
