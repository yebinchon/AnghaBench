
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hWndListView; } ;
struct TYPE_4__ {int iItem; scalar_t__ lParam; int mask; } ;
typedef TYPE_1__ LVITEMW ;
typedef int LPARAM ;
typedef int CPlItem ;
typedef TYPE_2__ CPanel ;


 int LVIF_PARAM ;
 int LVM_GETITEMW ;
 int LVM_GETNEXTITEM ;
 int LVNI_FOCUSED ;
 int LVNI_SELECTED ;
 int SendMessageW (int ,int ,int,int) ;

__attribute__((used)) static CPlItem* Control_GetCPlItem_From_ListView(CPanel *panel)
{
    LVITEMW lvItem;
    int selitem;

    selitem = SendMessageW(panel->hWndListView, LVM_GETNEXTITEM, -1, LVNI_FOCUSED
        | LVNI_SELECTED);

    if (selitem != -1)
    {
        lvItem.iItem = selitem;
        lvItem.mask = LVIF_PARAM;

        if (SendMessageW(panel->hWndListView, LVM_GETITEMW, 0, (LPARAM) &lvItem))
            return (CPlItem *) lvItem.lParam;
    }

    return ((void*)0);
}
