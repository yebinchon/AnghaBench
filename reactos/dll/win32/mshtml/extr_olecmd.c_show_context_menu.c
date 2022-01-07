
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int IOleCommandTarget_iface; } ;
struct TYPE_9__ {TYPE_1__ basedoc; int hwnd; scalar_t__ hostui; } ;
struct TYPE_8__ {int y; int x; } ;
typedef TYPE_2__ POINT ;
typedef int IUnknown ;
typedef int IDispatch ;
typedef TYPE_3__ HTMLDocumentObj ;
typedef int HMENU ;
typedef scalar_t__ DWORD ;


 int CGID_MSHTML ;
 int DestroyMenu (int ) ;
 int GetSubMenu (int ,scalar_t__) ;
 int IDR_BROWSE_CONTEXT_MENU ;
 scalar_t__ IDocHostUIHandler_ShowContextMenu (scalar_t__,scalar_t__,TYPE_2__*,int *,int *) ;
 int IOleCommandTarget_Exec (int *,int *,scalar_t__,int ,int *,int *) ;
 int LoadMenuW (int ,int ) ;
 int MAKEINTRESOURCEW (int ) ;
 scalar_t__ S_OK ;
 int TPM_LEFTALIGN ;
 int TPM_RETURNCMD ;
 int TPM_RIGHTBUTTON ;
 scalar_t__ TrackPopupMenu (int ,int,int ,int ,int ,int ,int *) ;
 int get_shdoclc () ;

void show_context_menu(HTMLDocumentObj *This, DWORD dwID, POINT *ppt, IDispatch *elem)
{
    HMENU menu_res, menu;
    DWORD cmdid;

    if(This->hostui && S_OK == IDocHostUIHandler_ShowContextMenu(This->hostui,
            dwID, ppt, (IUnknown*)&This->basedoc.IOleCommandTarget_iface, elem))
        return;

    menu_res = LoadMenuW(get_shdoclc(), MAKEINTRESOURCEW(IDR_BROWSE_CONTEXT_MENU));
    menu = GetSubMenu(menu_res, dwID);

    cmdid = TrackPopupMenu(menu, TPM_LEFTALIGN | TPM_RIGHTBUTTON | TPM_RETURNCMD,
            ppt->x, ppt->y, 0, This->hwnd, ((void*)0));
    DestroyMenu(menu_res);

    if(cmdid)
        IOleCommandTarget_Exec(&This->basedoc.IOleCommandTarget_iface, &CGID_MSHTML, cmdid, 0,
                ((void*)0), ((void*)0));
}
