
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_10__ {scalar_t__ selection_start; scalar_t__ selection_end; int style; int flags; int hwndSelf; } ;
struct TYPE_9__ {int left; int right; int top; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef int POINT ;
typedef int INT ;
typedef int HMENU ;
typedef TYPE_2__ EDITSTATE ;


 int CF_UNICODETEXT ;
 int COORDS_SCREEN ;
 int DestroyMenu (int ) ;
 int EDIT_ContextMenuCommand (TYPE_2__*,scalar_t__) ;
 scalar_t__ EDIT_EM_CanUndo (TYPE_2__*) ;
 int EF_FOCUSED ;
 int ES_PASSWORD ;
 int ES_READONLY ;
 int EnableMenuItem (int ,int,int) ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetSubMenu (int ,int ) ;
 scalar_t__ IsClipboardFormatAvailable (int ) ;
 int LoadMenuA (int ,char*) ;
 int MF_BYPOSITION ;
 int MF_ENABLED ;
 int MF_GRAYED ;
 int MapWindowPoints (int ,int ,int *,int) ;
 int ORDER_UINT (scalar_t__,scalar_t__) ;
 int SetFocus (int ) ;
 int TPM_LEFTALIGN ;
 int TPM_NONOTIFY ;
 int TPM_RETURNCMD ;
 int TPM_RIGHTBUTTON ;
 scalar_t__ TrackPopupMenu (int ,int,int,int,int ,int ,int *) ;
 int WIN_GetRectangles (int ,int ,int *,TYPE_1__*) ;
 scalar_t__ get_text_length (TYPE_2__*) ;
 int user32_module ;

__attribute__((used)) static void EDIT_WM_ContextMenu(EDITSTATE *es, INT x, INT y)
{
 HMENU menu = LoadMenuA(user32_module, "EDITMENU");
 HMENU popup = GetSubMenu(menu, 0);
 UINT start = es->selection_start;
 UINT end = es->selection_end;
 UINT cmd;

 ORDER_UINT(start, end);


 EnableMenuItem(popup, 0, MF_BYPOSITION | (EDIT_EM_CanUndo(es) && !(es->style & ES_READONLY) ? MF_ENABLED : MF_GRAYED));

 EnableMenuItem(popup, 2, MF_BYPOSITION | ((end - start) && !(es->style & ES_PASSWORD) && !(es->style & ES_READONLY) ? MF_ENABLED : MF_GRAYED));

 EnableMenuItem(popup, 3, MF_BYPOSITION | ((end - start) && !(es->style & ES_PASSWORD) ? MF_ENABLED : MF_GRAYED));

 EnableMenuItem(popup, 4, MF_BYPOSITION | (IsClipboardFormatAvailable(CF_UNICODETEXT) && !(es->style & ES_READONLY) ? MF_ENABLED : MF_GRAYED));

 EnableMenuItem(popup, 5, MF_BYPOSITION | ((end - start) && !(es->style & ES_READONLY) ? MF_ENABLED : MF_GRAYED));

 EnableMenuItem(popup, 7, MF_BYPOSITION | (start || (end != get_text_length(es)) ? MF_ENABLED : MF_GRAYED));

        if (x == -1 && y == -1)
        {
            RECT rc;






            WIN_GetRectangles( es->hwndSelf, COORDS_SCREEN, ((void*)0), &rc );

            x = rc.left + (rc.right - rc.left) / 2;
            y = rc.top + (rc.bottom - rc.top) / 2;
        }

 if (!(es->flags & EF_FOCUSED))
            SetFocus(es->hwndSelf);

 cmd = TrackPopupMenu(popup, TPM_LEFTALIGN | TPM_RIGHTBUTTON | TPM_RETURNCMD | TPM_NONOTIFY,
        x, y, 0, es->hwndSelf, ((void*)0));

 if (cmd)
     EDIT_ContextMenuCommand(es, cmd);

 DestroyMenu(menu);
}
