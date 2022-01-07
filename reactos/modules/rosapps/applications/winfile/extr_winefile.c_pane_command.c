
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {int hMenuView; } ;
struct TYPE_6__ {int hwnd; int visible_cols; } ;
typedef TYPE_1__ Pane ;
typedef int BOOL ;


 int COL_ALL ;
 int CheckMenuItem (int ,int const,int) ;
 int FALSE ;
 TYPE_5__ Globals ;



 int InvalidateRect (int ,int ,int ) ;
 int MF_BYCOMMAND ;
 int MF_CHECKED ;
 int TRUE ;
 int calc_widths (TYPE_1__*,int ) ;
 int set_header (TYPE_1__*) ;

__attribute__((used)) static BOOL pane_command(Pane* pane, UINT cmd)
{
 switch(cmd) {
  case 128:
   if (pane->visible_cols) {
    pane->visible_cols = 0;
    calc_widths(pane, TRUE);
    set_header(pane);
    InvalidateRect(pane->hwnd, 0, TRUE);
    CheckMenuItem(Globals.hMenuView, 128, MF_BYCOMMAND|MF_CHECKED);
    CheckMenuItem(Globals.hMenuView, 129, MF_BYCOMMAND);
   }
   break;

  case 129:
   if (pane->visible_cols != COL_ALL) {
    pane->visible_cols = COL_ALL;
    calc_widths(pane, TRUE);
    set_header(pane);
    InvalidateRect(pane->hwnd, 0, TRUE);
    CheckMenuItem(Globals.hMenuView, 128, MF_BYCOMMAND);
    CheckMenuItem(Globals.hMenuView, 129, MF_BYCOMMAND|MF_CHECKED);
   }
   break;

  case 130: {
   calc_widths(pane, TRUE);
   set_header(pane);
   InvalidateRect(pane->hwnd, 0, TRUE);
   break;}



  default:
   return FALSE;
 }

 return TRUE;
}
