
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ level; int expanded; } ;
struct TYPE_5__ {int hwnd; } ;
typedef TYPE_1__ Pane ;
typedef scalar_t__ LRESULT ;
typedef int LPARAM ;
typedef TYPE_2__ Entry ;


 int FALSE ;
 int LB_DELETESTRING ;
 scalar_t__ LB_ERR ;
 int LB_FINDSTRING ;
 int LB_GETITEMDATA ;
 int SW_HIDE ;
 int SW_SHOW ;
 void* SendMessageW (int ,int ,int,int ) ;
 int ShowWindow (int ,int ) ;

__attribute__((used)) static void collapse_entry(Pane* pane, Entry* dir)
{
        int idx;

        if (!dir) return;
        idx = SendMessageW(pane->hwnd, LB_FINDSTRING, 0, (LPARAM)dir);

 ShowWindow(pane->hwnd, SW_HIDE);


 for(;;) {
  LRESULT res = SendMessageW(pane->hwnd, LB_GETITEMDATA, idx+1, 0);
  Entry* sub = (Entry*) res;

  if (res==LB_ERR || !sub || sub->level<=dir->level)
   break;

  SendMessageW(pane->hwnd, LB_DELETESTRING, idx+1, 0);
 }

 dir->expanded = FALSE;

 ShowWindow(pane->hwnd, SW_SHOW);
}
