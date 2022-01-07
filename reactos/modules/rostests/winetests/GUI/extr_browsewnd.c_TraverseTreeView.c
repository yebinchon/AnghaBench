
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {int hBrowseTV; } ;
typedef TYPE_1__* PMAIN_WND_INFO ;
typedef int * HTREEITEM ;


 int FreeItemTag (TYPE_1__*,int *) ;
 scalar_t__ NodeHasChild (TYPE_1__*,int *) ;
 scalar_t__ TRUE ;
 int * TreeView_GetChild (int ,int *) ;
 int * TreeView_GetNextSibling (int ,int *) ;
 int * TreeView_GetParent (int ,int *) ;

__attribute__((used)) static VOID
TraverseTreeView(PMAIN_WND_INFO pInfo,
                 HTREEITEM hItem)
{
    while (NodeHasChild(pInfo, hItem))
    {
        HTREEITEM hChildItem;

        FreeItemTag(pInfo, hItem);

        hChildItem = TreeView_GetChild(pInfo->hBrowseTV,
                                       hItem);

        TraverseTreeView(pInfo,
                         hChildItem);

        hItem = TreeView_GetNextSibling(pInfo->hBrowseTV,
                                        hItem);
    }

    if (hItem)
    {

        while (TRUE)
        {
            HTREEITEM hOldItem;

            FreeItemTag(pInfo, hItem);
            hOldItem = hItem;
            hItem = TreeView_GetNextSibling(pInfo->hBrowseTV,
                                            hItem);
            if (hItem == ((void*)0))
            {
                hItem = hOldItem;
                break;
            }
        }

        hItem = TreeView_GetParent(pInfo->hBrowseTV,
                                   hItem);
    }
}
