#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  item ;
struct TYPE_8__ {int /*<<< orphan*/  hwndTreeView; TYPE_1__* lpBrowseInfo; } ;
typedef  TYPE_2__ browse_info ;
struct TYPE_10__ {scalar_t__ lpi; } ;
struct TYPE_9__ {void* hItem; scalar_t__ lParam; int /*<<< orphan*/  mask; } ;
struct TYPE_7__ {scalar_t__ pidlRoot; } ;
typedef  TYPE_3__ TVITEMEXW ;
typedef  scalar_t__ LPVOID ;
typedef  TYPE_4__* LPTV_ITEMDATA ;
typedef  scalar_t__ LPITEMIDLIST ;
typedef  scalar_t__ LPCITEMIDLIST ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  void* HTREEITEM ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  TVE_EXPAND ; 
 int /*<<< orphan*/  TVGN_CHILD ; 
 int /*<<< orphan*/  TVGN_NEXT ; 
 int /*<<< orphan*/  TVGN_ROOT ; 
 int /*<<< orphan*/  TVIF_PARAM ; 
 int /*<<< orphan*/  TVM_EXPAND ; 
 int /*<<< orphan*/  TVM_GETITEMW ; 
 int /*<<< orphan*/  TVM_GETNEXTITEM ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL FUNC10(browse_info *info, LPVOID selection, 
    BOOL is_str, HTREEITEM *pItem)
{
    LPITEMIDLIST pidlSelection = selection;
    LPCITEMIDLIST pidlCurrent, pidlRoot;
    TVITEMEXW item;
    BOOL bResult = FALSE;

    FUNC9(&item, 0, sizeof(item));

    /* If 'selection' is a string, convert to a Shell ID List. */ 
    if (is_str) {
        IShellFolder *psfDesktop;
        HRESULT hr;

        hr = FUNC5(&psfDesktop);
        if (FUNC0(hr))
            goto done;

        hr = FUNC3(psfDesktop, NULL, NULL, 
                     selection, NULL, &pidlSelection, NULL);
        FUNC4(psfDesktop);
        if (FUNC0(hr)) 
            goto done;
    }

    /* Move pidlCurrent behind the SHITEMIDs in pidlSelection, which are the root of
     * the sub-tree currently displayed. */
    pidlRoot = info->lpBrowseInfo->pidlRoot;
    pidlCurrent = pidlSelection;
    while (!FUNC7(pidlRoot) && FUNC8(pidlRoot, pidlCurrent)) {
        pidlRoot = FUNC2(pidlRoot);
        pidlCurrent = FUNC2(pidlCurrent);
    }

    /* The given ID List is not part of the SHBrowseForFolder's current sub-tree. */
    if (!FUNC7(pidlRoot))
        goto done;

    /* Initialize item to point to the first child of the root folder. */
    item.mask = TVIF_PARAM;
    item.hItem = (HTREEITEM)FUNC6(info->hwndTreeView, TVM_GETNEXTITEM, TVGN_ROOT, 0);

    if (item.hItem)
        item.hItem = (HTREEITEM)FUNC6(info->hwndTreeView, TVM_GETNEXTITEM, TVGN_CHILD,
                                             (LPARAM)item.hItem);

    /* Walk the tree along the nodes corresponding to the remaining ITEMIDLIST */
    while (item.hItem && !FUNC7(pidlCurrent)) {
        LPTV_ITEMDATA pItemData;

        FUNC6(info->hwndTreeView, TVM_GETITEMW, 0, (LPARAM)&item);
        pItemData = (LPTV_ITEMDATA)item.lParam;

        if (FUNC8(pItemData->lpi, pidlCurrent)) {
            pidlCurrent = FUNC2(pidlCurrent);
            if (!FUNC7(pidlCurrent)) {
                /* Only expand current node and move on to its first child,
                 * if we didn't already reach the last SHITEMID */
                FUNC6(info->hwndTreeView, TVM_EXPAND, TVE_EXPAND, (LPARAM)item.hItem);
                item.hItem = (HTREEITEM)FUNC6(info->hwndTreeView, TVM_GETNEXTITEM, TVGN_CHILD,
                                             (LPARAM)item.hItem);
            }
        } else {
            item.hItem = (HTREEITEM)FUNC6(info->hwndTreeView, TVM_GETNEXTITEM, TVGN_NEXT,
                                             (LPARAM)item.hItem);
        }
    }

    if (FUNC7(pidlCurrent) && item.hItem) 
        bResult = TRUE;

done:
    if (pidlSelection && pidlSelection != selection)
        FUNC1(pidlSelection);

    if (pItem) 
        *pItem = item.hItem;
    
    return bResult;
}