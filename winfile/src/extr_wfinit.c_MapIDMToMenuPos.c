
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef scalar_t__ HWND ;


 int GWL_STYLE ;
 int GetWindowLongPtr (scalar_t__,int ) ;
 int IDM_EXTENSIONS ;
 scalar_t__ SendMessage (int ,int ,int ,long) ;
 int WM_MDIGETACTIVE ;
 int WS_MAXIMIZE ;
 scalar_t__ bSecMenuDeleted ;
 int hwndMDIClient ;

UINT
MapIDMToMenuPos(UINT idm)
{
    UINT pos;

    if (idm < 100)
    {

        pos = idm;
    }
    else
    {

        pos = idm / 100 - 1;
    }


    HWND hwndActive;
    hwndActive = (HWND)SendMessage(hwndMDIClient, WM_MDIGETACTIVE, 0, 0L);
    if (hwndActive && GetWindowLongPtr(hwndActive, GWL_STYLE) & WS_MAXIMIZE)
        pos++;


    if (pos >= IDM_EXTENSIONS && bSecMenuDeleted)
    {
        pos--;
    }

    return pos;
}
