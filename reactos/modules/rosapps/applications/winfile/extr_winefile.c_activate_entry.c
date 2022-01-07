
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {int hwnd; int treePane; TYPE_3__* cur; } ;
struct TYPE_22__ {int hwnd; TYPE_2__ left; } ;
struct TYPE_19__ {int dwFileAttributes; char* cFileName; } ;
struct TYPE_21__ {int scanned; scalar_t__ expanded; struct TYPE_21__* up; TYPE_1__ data; } ;
typedef TYPE_2__ Pane ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_3__ Entry ;
typedef TYPE_4__ ChildWnd ;


 int FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 scalar_t__ GetKeyState (int ) ;
 int LB_FINDSTRING ;
 int LB_GETCURSEL ;
 int LB_SETCURSEL ;
 int SW_SHOWNORMAL ;
 int SendMessageW (int ,int ,int,int ) ;
 int VK_MENU ;
 int calc_widths (TYPE_2__*,int ) ;
 int collapse_entry (TYPE_2__*,TYPE_3__*) ;
 int expand_entry (TYPE_4__*,TYPE_3__*) ;
 int launch_entry (TYPE_3__*,int ,int ) ;
 int scan_entry (TYPE_4__*,TYPE_3__*,int,int ) ;
 int set_curdir (TYPE_4__*,TYPE_3__*,int,int ) ;
 int set_header (TYPE_2__*) ;
 int show_properties_dlg (TYPE_3__*,int ) ;

__attribute__((used)) static void activate_entry(ChildWnd* child, Pane* pane, HWND hwnd)
{
 Entry* entry = pane->cur;

 if (!entry)
  return;

 if (entry->data.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) {
  int scanned_old = entry->scanned;

  if (!scanned_old)
  {
   int idx = SendMessageW(child->left.hwnd, LB_GETCURSEL, 0, 0);
   scan_entry(child, entry, idx, hwnd);
  }

  if (entry->data.cFileName[0]=='.' && entry->data.cFileName[1]=='\0')
   return;

  if (entry->data.cFileName[0]=='.' && entry->data.cFileName[1]=='.' && entry->data.cFileName[2]=='\0') {
   entry = child->left.cur->up;
   collapse_entry(&child->left, entry);
   goto focus_entry;
  } else if (entry->expanded)
   collapse_entry(pane, child->left.cur);
  else {
   expand_entry(child, child->left.cur);

   if (!pane->treePane) focus_entry: {
    int idxstart = SendMessageW(child->left.hwnd, LB_GETCURSEL, 0, 0);
    int idx = SendMessageW(child->left.hwnd, LB_FINDSTRING, idxstart, (LPARAM)entry);
    SendMessageW(child->left.hwnd, LB_SETCURSEL, idx, 0);
    set_curdir(child, entry, idx, hwnd);
   }
  }

  if (!scanned_old) {
   calc_widths(pane, FALSE);

   set_header(pane);
  }
 } else {
  if (GetKeyState(VK_MENU) < 0)
   show_properties_dlg(entry, child->hwnd);
  else
   launch_entry(entry, child->hwnd, SW_SHOWNORMAL);
 }
}
