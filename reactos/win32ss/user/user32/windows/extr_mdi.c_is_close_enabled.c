
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int HWND ;
typedef scalar_t__ HMENU ;
typedef int BOOL ;


 int CS_NOCLOSE ;
 int FALSE ;
 int GCL_STYLE ;
 int GetClassLongPtrW (int ,int ) ;
 int GetMenuState (scalar_t__,int ,int ) ;
 scalar_t__ GetSystemMenu (int ,int ) ;
 int MF_BYCOMMAND ;
 int MF_DISABLED ;
 int MF_GRAYED ;
 int SC_CLOSE ;
 int TRUE ;

__attribute__((used)) static BOOL is_close_enabled(HWND hwnd, HMENU hSysMenu)
{
    if (GetClassLongPtrW(hwnd, GCL_STYLE) & CS_NOCLOSE) return FALSE;

    if (!hSysMenu) hSysMenu = GetSystemMenu(hwnd, FALSE);
    if (hSysMenu)
    {
        UINT state = GetMenuState(hSysMenu, SC_CLOSE, MF_BYCOMMAND);
        if (state == 0xFFFFFFFF || (state & (MF_DISABLED | MF_GRAYED)))
            return FALSE;
    }
    return TRUE;
}
