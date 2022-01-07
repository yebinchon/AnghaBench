
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hBrowseTV; } ;
struct TYPE_5__ {int cChildren; int mask; int hItem; } ;
typedef TYPE_1__ TV_ITEM ;
typedef TYPE_2__* PMAIN_WND_INFO ;
typedef int HTREEITEM ;
typedef int BOOL ;


 int TVIF_CHILDREN ;
 int TreeView_GetItem (int ,TYPE_1__*) ;

__attribute__((used)) static BOOL
NodeHasChild(PMAIN_WND_INFO pInfo,
             HTREEITEM hItem)
{
    TV_ITEM tvItem;

    tvItem.hItem = hItem;
    tvItem.mask = TVIF_CHILDREN;

    (void)TreeView_GetItem(pInfo->hBrowseTV, &tvItem);

    return (tvItem.cChildren == 1);
}
