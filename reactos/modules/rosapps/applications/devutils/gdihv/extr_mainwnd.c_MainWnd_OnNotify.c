
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_8__ {int code; } ;
struct TYPE_7__ {int uNewState; int uOldState; int iItem; } ;
struct TYPE_6__ {int lParam; int iItem; int mask; } ;
typedef TYPE_1__ LV_ITEM ;
typedef int LRESULT ;
typedef TYPE_2__* LPNMLISTVIEW ;
typedef TYPE_3__* LPNMHDR ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HANDLE ;


 int GetDlgItem (int ,int ) ;
 int HandleList_Update (int ,int ) ;
 int IDC_HANDLELIST ;
 int IDC_PROCESSLIST ;
 int LVIF_PARAM ;
 int LVIS_SELECTED ;

 int ListView_GetItem (int ,TYPE_1__*) ;
 int TRUE ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static LRESULT
MainWnd_OnNotify(HWND hWnd, WPARAM wParam, LPARAM lParam)
{
 LPNMHDR pnmh = (LPNMHDR)lParam;

 switch(pnmh->code)
 {
  case 128:
  {
   LPNMLISTVIEW pnmlv = (LPNMLISTVIEW)pnmh;
   if ((wParam == IDC_PROCESSLIST)
    && (pnmlv->uNewState & LVIS_SELECTED)
    && !(pnmlv->uOldState & LVIS_SELECTED))
   {
    LV_ITEM item;
    memset(&item, 0, sizeof(LV_ITEM));
    item.mask = LVIF_PARAM;
    item.iItem = pnmlv->iItem;
    (void)ListView_GetItem(GetDlgItem(hWnd, IDC_PROCESSLIST), &item);
    HandleList_Update(GetDlgItem(hWnd, IDC_HANDLELIST), (HANDLE)item.lParam);
    return TRUE;
   }
   break;
  }
 }

 return 0;
}
