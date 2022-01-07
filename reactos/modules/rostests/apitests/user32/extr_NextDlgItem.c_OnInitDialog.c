
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef int HWND ;
typedef int BOOL ;


 int IDC_TEST1 ;
 int MAKEWPARAM (int ,int ) ;
 int PostMessage (int ,int ,int ,int ) ;
 int TRUE ;
 int WM_COMMAND ;

__attribute__((used)) static BOOL
OnInitDialog(HWND hwnd, HWND hwndFocus, LPARAM lParam)
{
    PostMessage(hwnd, WM_COMMAND, MAKEWPARAM(IDC_TEST1, 0), 0);
    return TRUE;
}
