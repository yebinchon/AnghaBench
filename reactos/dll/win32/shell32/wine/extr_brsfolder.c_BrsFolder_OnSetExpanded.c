
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int item ;
struct TYPE_8__ {int hwndTreeView; TYPE_1__* lpBrowseInfo; } ;
typedef TYPE_2__ browse_info ;
struct TYPE_10__ {scalar_t__ lpi; } ;
struct TYPE_9__ {void* hItem; scalar_t__ lParam; int mask; } ;
struct TYPE_7__ {scalar_t__ pidlRoot; } ;
typedef TYPE_3__ TVITEMEXW ;
typedef scalar_t__ LPVOID ;
typedef TYPE_4__* LPTV_ITEMDATA ;
typedef scalar_t__ LPITEMIDLIST ;
typedef scalar_t__ LPCITEMIDLIST ;
typedef int LPARAM ;
typedef int IShellFolder ;
typedef void* HTREEITEM ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 int ILFree (scalar_t__) ;
 scalar_t__ ILGetNext (scalar_t__) ;
 int IShellFolder_ParseDisplayName (int *,int *,int *,scalar_t__,int *,scalar_t__*,int *) ;
 int IShellFolder_Release (int *) ;
 int SHGetDesktopFolder (int **) ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 scalar_t__ TRUE ;
 int TVE_EXPAND ;
 int TVGN_CHILD ;
 int TVGN_NEXT ;
 int TVGN_ROOT ;
 int TVIF_PARAM ;
 int TVM_EXPAND ;
 int TVM_GETITEMW ;
 int TVM_GETNEXTITEM ;
 scalar_t__ _ILIsEmpty (scalar_t__) ;
 scalar_t__ _ILIsEqualSimple (scalar_t__,scalar_t__) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static BOOL BrsFolder_OnSetExpanded(browse_info *info, LPVOID selection,
    BOOL is_str, HTREEITEM *pItem)
{
    LPITEMIDLIST pidlSelection = selection;
    LPCITEMIDLIST pidlCurrent, pidlRoot;
    TVITEMEXW item;
    BOOL bResult = FALSE;

    memset(&item, 0, sizeof(item));


    if (is_str) {
        IShellFolder *psfDesktop;
        HRESULT hr;

        hr = SHGetDesktopFolder(&psfDesktop);
        if (FAILED(hr))
            goto done;

        hr = IShellFolder_ParseDisplayName(psfDesktop, ((void*)0), ((void*)0),
                     selection, ((void*)0), &pidlSelection, ((void*)0));
        IShellFolder_Release(psfDesktop);
        if (FAILED(hr))
            goto done;
    }



    pidlRoot = info->lpBrowseInfo->pidlRoot;
    pidlCurrent = pidlSelection;
    while (!_ILIsEmpty(pidlRoot) && _ILIsEqualSimple(pidlRoot, pidlCurrent)) {
        pidlRoot = ILGetNext(pidlRoot);
        pidlCurrent = ILGetNext(pidlCurrent);
    }


    if (!_ILIsEmpty(pidlRoot))
        goto done;


    item.mask = TVIF_PARAM;
    item.hItem = (HTREEITEM)SendMessageW(info->hwndTreeView, TVM_GETNEXTITEM, TVGN_ROOT, 0);

    if (item.hItem)
        item.hItem = (HTREEITEM)SendMessageW(info->hwndTreeView, TVM_GETNEXTITEM, TVGN_CHILD,
                                             (LPARAM)item.hItem);


    while (item.hItem && !_ILIsEmpty(pidlCurrent)) {
        LPTV_ITEMDATA pItemData;

        SendMessageW(info->hwndTreeView, TVM_GETITEMW, 0, (LPARAM)&item);
        pItemData = (LPTV_ITEMDATA)item.lParam;

        if (_ILIsEqualSimple(pItemData->lpi, pidlCurrent)) {
            pidlCurrent = ILGetNext(pidlCurrent);
            if (!_ILIsEmpty(pidlCurrent)) {


                SendMessageW(info->hwndTreeView, TVM_EXPAND, TVE_EXPAND, (LPARAM)item.hItem);
                item.hItem = (HTREEITEM)SendMessageW(info->hwndTreeView, TVM_GETNEXTITEM, TVGN_CHILD,
                                             (LPARAM)item.hItem);
            }
        } else {
            item.hItem = (HTREEITEM)SendMessageW(info->hwndTreeView, TVM_GETNEXTITEM, TVGN_NEXT,
                                             (LPARAM)item.hItem);
        }
    }

    if (_ILIsEmpty(pidlCurrent) && item.hItem)
        bResult = TRUE;

done:
    if (pidlSelection && pidlSelection != selection)
        ILFree(pidlSelection);

    if (pItem)
        *pItem = item.hItem;

    return bResult;
}
