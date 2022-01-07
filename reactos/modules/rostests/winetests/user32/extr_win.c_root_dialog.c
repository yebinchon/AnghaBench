
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int DM_GETDEFID ;
 int DS_CONTROL ;
 int DefDlgProcA (int ,int ,int ,int ) ;
 int GWL_EXSTYLE ;
 int GWL_STYLE ;
 int GetParent (int ) ;
 int GetWindowLongA (int ,int ) ;
 int WS_CHILD ;
 int WS_EX_CONTROLPARENT ;
 int WS_POPUP ;

__attribute__((used)) static HWND root_dialog(HWND hwnd)
{
    while ((GetWindowLongA(hwnd, GWL_EXSTYLE) & WS_EX_CONTROLPARENT) &&
           (GetWindowLongA(hwnd, GWL_STYLE) & (WS_CHILD|WS_POPUP)) == WS_CHILD)
    {
        HWND parent = GetParent(hwnd);


        if (!DefDlgProcA(parent, DM_GETDEFID, 0, 0))
            break;

        hwnd = parent;

        if (!(GetWindowLongA(hwnd, GWL_STYLE) & DS_CONTROL))
            break;
    }

    return hwnd;
}
