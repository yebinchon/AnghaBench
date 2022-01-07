
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int hWnd; int hWndListView; } ;
typedef int HMENU ;
typedef TYPE_1__ CPanel ;


 int CheckMenuRadioItem (int ,int ,int ,int,int ) ;
 int FCIDM_SHVIEW_BIGICON ;
 int FCIDM_SHVIEW_REPORTVIEW ;
 int GWL_STYLE ;
 int GetMenu (int ) ;
 int GetSubMenu (int ,int) ;
 int LISTVIEW_DEFSTYLE ;
 int MF_BYCOMMAND ;
 int SetWindowLongW (int ,int ,int) ;

__attribute__((used)) static void Control_UpdateListViewStyle(CPanel *panel, UINT style, UINT id)
{
    HMENU hMenu, hSubMenu;

    SetWindowLongW(panel->hWndListView, GWL_STYLE, LISTVIEW_DEFSTYLE | style);


    hMenu = GetMenu(panel->hWnd);
    hSubMenu = GetSubMenu(hMenu, 1);

    CheckMenuRadioItem(hSubMenu, FCIDM_SHVIEW_BIGICON, FCIDM_SHVIEW_REPORTVIEW,
        id, MF_BYCOMMAND);
}
