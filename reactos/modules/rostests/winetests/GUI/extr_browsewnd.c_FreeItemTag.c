
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {int hBrowseTV; } ;
struct TYPE_5__ {scalar_t__ lParam; int mask; int hItem; } ;
typedef TYPE_1__ TV_ITEM ;
typedef int PTEST_ITEM ;
typedef TYPE_2__* PMAIN_WND_INFO ;
typedef int HTREEITEM ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 int TVIF_PARAM ;
 int TreeView_GetItem (int ,TYPE_1__*) ;

__attribute__((used)) static VOID
FreeItemTag(PMAIN_WND_INFO pInfo,
            HTREEITEM hItem)
{
    TV_ITEM tvItem;

    tvItem.hItem = hItem;
    tvItem.mask = TVIF_PARAM;

    (void)TreeView_GetItem(pInfo->hBrowseTV, &tvItem);

    HeapFree(GetProcessHeap(),
             0,
             (PTEST_ITEM)tvItem.lParam);
}
