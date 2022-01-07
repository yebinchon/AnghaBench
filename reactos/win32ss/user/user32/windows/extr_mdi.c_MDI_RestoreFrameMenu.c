
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int menuInfo ;
typedef scalar_t__ UINT ;
struct TYPE_4__ {int cbSize; int fMask; int fType; scalar_t__ dwTypeData; scalar_t__ hbmpItem; } ;
typedef TYPE_1__ MENUITEMINFOW ;
typedef scalar_t__ LPWSTR ;
typedef scalar_t__ INT ;
typedef int HWND ;
typedef int HMENU ;
typedef scalar_t__ HBITMAP ;
typedef int BOOL ;


 int DeleteMenu (int ,scalar_t__,int ) ;
 int DeleteObject (scalar_t__) ;
 int DrawMenuBar (int ) ;
 int ERR (char*) ;
 int FALSE ;
 int GetMenu (int ) ;
 scalar_t__ GetMenuItemCount (int ) ;
 scalar_t__ GetMenuItemID (int ,scalar_t__) ;
 int GetMenuItemInfoW (int ,int ,int ,TYPE_1__*) ;
 int MFT_BITMAP ;
 int MF_BYCOMMAND ;
 int MF_BYPOSITION ;
 int MIIM_BITMAP ;
 int MIIM_DATA ;
 int MIIM_TYPE ;
 int RemoveMenu (int ,int ,int ) ;
 scalar_t__ SC_CLOSE ;
 scalar_t__ SC_MINIMIZE ;
 scalar_t__ SC_RESTORE ;
 int TRACE (char*,int ,int ) ;
 int TRUE ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static BOOL MDI_RestoreFrameMenu( HWND frame, HWND hChild, HBITMAP hBmpClose )
{
    MENUITEMINFOW menuInfo;
    HMENU menu = GetMenu( frame );
    INT nItems;
    UINT iId;

    TRACE("frame %p,child %p\n",frame, hChild);

    if (!menu) return FALSE;


    nItems = GetMenuItemCount(menu) - 1;
    iId = GetMenuItemID(menu, nItems);
    if ( !(iId == SC_RESTORE || iId == SC_CLOSE) )
    {
        ERR("no system buttons then nothing to do\n");
        return FALSE;
    }





    memset(&menuInfo, 0, sizeof(menuInfo));
    menuInfo.cbSize = sizeof(menuInfo);
    menuInfo.fMask = MIIM_DATA | MIIM_TYPE | MIIM_BITMAP;

    GetMenuItemInfoW(menu,
       0,
       TRUE,
       &menuInfo);

    RemoveMenu(menu,0,MF_BYPOSITION);

    if ( (menuInfo.fType & MFT_BITMAP) &&
  (menuInfo.dwTypeData != 0) &&
  (menuInfo.dwTypeData != (LPWSTR)hBmpClose) )
    {
        DeleteObject(menuInfo.dwTypeData);
    }

    if ( menuInfo.hbmpItem != 0 )
         DeleteObject(menuInfo.hbmpItem);


    DeleteMenu(menu, SC_CLOSE, MF_BYCOMMAND);

    DeleteMenu(menu, SC_RESTORE, MF_BYCOMMAND);

    DeleteMenu(menu, SC_MINIMIZE, MF_BYCOMMAND);

    DrawMenuBar(frame);

    return TRUE;
}
