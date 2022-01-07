
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int cpMax; int cpMin; } ;
struct TYPE_7__ {int hwndParent; int lpOleCallback; int hWnd; } ;
typedef TYPE_1__ ME_TextEditor ;
typedef int HMENU ;
typedef TYPE_2__ CHARRANGE ;
typedef int BOOL ;


 int DestroyMenu (int ) ;
 int FALSE ;
 int IRichEditOleCallback_GetContextMenu (int ,int,int *,TYPE_2__*,int *) ;
 int ME_GetSelectionOfs (TYPE_1__*,int *,int *) ;
 int ME_GetSelectionType (TYPE_1__*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TPM_LEFTALIGN ;
 int TPM_RIGHTBUTTON ;
 int TRUE ;
 int TrackPopupMenu (int ,int,int,int,int ,int ,int *) ;

__attribute__((used)) static BOOL ME_ShowContextMenu(ME_TextEditor *editor, int x, int y)
{
  CHARRANGE selrange;
  HMENU menu;
  int seltype;

  if(!editor->lpOleCallback || !editor->hWnd)
    return FALSE;
  ME_GetSelectionOfs(editor, &selrange.cpMin, &selrange.cpMax);
  seltype = ME_GetSelectionType(editor);
  if(SUCCEEDED(IRichEditOleCallback_GetContextMenu(editor->lpOleCallback, seltype, ((void*)0), &selrange, &menu)))
  {
    TrackPopupMenu(menu, TPM_LEFTALIGN | TPM_RIGHTBUTTON, x, y, 0, editor->hwndParent, ((void*)0));
    DestroyMenu(menu);
  }
  return TRUE;
}
