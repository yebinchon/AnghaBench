
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int hwndSelf; } ;
typedef int LRESULT ;
typedef scalar_t__ INT ;
typedef TYPE_1__ EDITSTATE ;
typedef int DWORD ;


 int DefWindowProcW (int ,int ,scalar_t__,int) ;
 scalar_t__ EDIT_CheckCombo (TYPE_1__*,int ,scalar_t__) ;
 scalar_t__ EDIT_EM_CanUndo (TYPE_1__*) ;
 int EDIT_EM_Undo (TYPE_1__*) ;
 scalar_t__ VK_BACK ;
 scalar_t__ VK_DOWN ;
 scalar_t__ VK_UP ;
 int WM_SYSKEYDOWN ;

__attribute__((used)) static LRESULT EDIT_WM_SysKeyDown(EDITSTATE *es, INT key, DWORD key_data)
{
 if ((key == VK_BACK) && (key_data & 0x2000)) {
  if (EDIT_EM_CanUndo(es))
   EDIT_EM_Undo(es);
  return 0;
 } else if (key == VK_UP || key == VK_DOWN) {
  if (EDIT_CheckCombo(es, WM_SYSKEYDOWN, key))
   return 0;
 }
 return DefWindowProcW(es->hwndSelf, WM_SYSKEYDOWN, key, key_data);
}
