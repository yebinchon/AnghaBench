
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef scalar_t__ HWND ;


 int GWL_STYLE ;
 int GetWindowLongPtr (scalar_t__,int ) ;
 scalar_t__ IDM_EXTENSIONS ;
 scalar_t__ IDM_SECURITY ;
 scalar_t__ MAX_EXTENSIONS ;
 scalar_t__ SendMessage (int ,int ,int ,long) ;
 int WM_MDIGETACTIVE ;
 int WS_MAXIMIZE ;
 scalar_t__ bSecMenuDeleted ;
 int hwndMDIClient ;
 scalar_t__ iNumExtensions ;

UINT MapMenuPosToIDM(UINT pos)
{
    UINT idm = pos;


    HWND hwndActive;
    hwndActive = (HWND)SendMessage(hwndMDIClient, WM_MDIGETACTIVE, 0, 0L);
    if (hwndActive && GetWindowLongPtr(hwndActive, GWL_STYLE) & WS_MAXIMIZE)
        idm--;


    if (idm >= IDM_SECURITY && bSecMenuDeleted)
    {
        idm++;
    }

    if (idm >= IDM_EXTENSIONS + iNumExtensions)
    {
        idm += MAX_EXTENSIONS - iNumExtensions;
    }

    return idm;
}
