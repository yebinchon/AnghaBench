
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_15__ {int hwnd; } ;
struct TYPE_12__ {int hwnd; } ;
struct TYPE_14__ {int header_wdths_ok; TYPE_4__ right; int filter_flags; int filter_pattern; int sortOrder; TYPE_1__ left; } ;
struct TYPE_13__ {scalar_t__ level; scalar_t__ etype; int down; } ;
typedef scalar_t__ LRESULT ;
typedef int LPCWSTR ;
typedef int HWND ;
typedef int HCURSOR ;
typedef TYPE_2__ Entry ;
typedef TYPE_3__ ChildWnd ;


 scalar_t__ ET_SHELL ;
 int FALSE ;
 scalar_t__ IDC_WAIT ;
 int LB_DELETESTRING ;
 scalar_t__ LB_ERR ;
 int LB_GETITEMDATA ;
 int LB_RESETCONTENT ;
 int LoadCursorW (int ,int ) ;
 int MAX_PATH ;
 scalar_t__ SendMessageW (int ,int ,int,int ) ;
 int SetCursor (int ) ;
 int calc_widths (TYPE_4__*,int ) ;
 int free_entries (TYPE_2__*) ;
 int get_path (TYPE_2__*,int *) ;
 int insert_entries (TYPE_4__*,int ,int ,int ,int) ;
 int read_directory (TYPE_2__*,int *,int ,int ) ;
 int set_header (TYPE_4__*) ;

__attribute__((used)) static void scan_entry(ChildWnd* child, Entry* entry, int idx, HWND hwnd)
{
 WCHAR path[MAX_PATH];
 HCURSOR old_cursor = SetCursor(LoadCursorW(0, (LPCWSTR)IDC_WAIT));


 for(;;) {
  LRESULT res = SendMessageW(child->left.hwnd, LB_GETITEMDATA, idx+1, 0);
  Entry* sub = (Entry*) res;

  if (res==LB_ERR || !sub || sub->level<=entry->level)
   break;

  SendMessageW(child->left.hwnd, LB_DELETESTRING, idx+1, 0);
 }


 SendMessageW(child->right.hwnd, LB_RESETCONTENT, 0, 0);


 free_entries(entry);


 if (entry->etype == ET_SHELL)
 {
  read_directory(entry, ((void*)0), child->sortOrder, hwnd);
 }
 else
 {
  get_path(entry, path);
  read_directory(entry, path, child->sortOrder, hwnd);
 }


 insert_entries(&child->right, entry->down, child->filter_pattern, child->filter_flags, -1);
 calc_widths(&child->right, FALSE);
 set_header(&child->right);

 child->header_wdths_ok = FALSE;

 SetCursor(old_cursor);
}
