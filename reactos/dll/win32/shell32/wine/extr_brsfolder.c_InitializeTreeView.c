
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int hwndTreeView; int hWnd; TYPE_1__* lpBrowseInfo; } ;
typedef TYPE_2__ browse_info ;
struct TYPE_6__ {int ulFlags; int pidlRoot; } ;
typedef int LPVOID ;
typedef int LPITEMIDLIST ;
typedef int LPCITEMIDLIST ;
typedef int LPARAM ;
typedef int IShellFolder ;
typedef int IEnumIDList ;
typedef scalar_t__ HTREEITEM ;
typedef int HRESULT ;
typedef scalar_t__ HIMAGELIST ;
typedef int DWORD ;


 int BrowseFlagsToSHCONTF (int ) ;
 scalar_t__ FAILED (int ) ;
 int IID_IShellFolder ;
 int ILClone (int ) ;
 int ILFindLastID (int ) ;
 int ILFree (int ) ;
 int ILRemoveLastID (int ) ;
 int IShellFolder_AddRef (int *) ;
 int IShellFolder_BindToObject (int *,int ,int ,int *,int *) ;
 int IShellFolder_EnumObjects (int *,int ,int ,int **) ;
 int IShellFolder_Release (int *) ;
 scalar_t__ InsertTreeViewItem (TYPE_2__*,int *,int ,int ,int *,scalar_t__) ;
 int SHGetDesktopFolder (int **) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int Shell_GetImageLists (int *,scalar_t__*) ;
 int TRACE (char*,TYPE_2__*) ;
 int TVE_EXPAND ;
 scalar_t__ TVI_ROOT ;
 int TVM_DELETEITEM ;
 int TVM_EXPAND ;
 int TVM_SETIMAGELIST ;
 int WARN (char*,int ) ;
 scalar_t__ _ILIsDesktop (int ) ;
 int _ILIsEmpty (int ) ;

__attribute__((used)) static void InitializeTreeView( browse_info *info )
{
    LPITEMIDLIST pidlParent, pidlChild;
    HIMAGELIST hImageList;
    HRESULT hr;
    IShellFolder *lpsfParent, *lpsfRoot;
    IEnumIDList * pEnumChildren = ((void*)0);
    HTREEITEM item;
    DWORD flags;
    LPCITEMIDLIST root = info->lpBrowseInfo->pidlRoot;

    TRACE("%p\n", info );

    Shell_GetImageLists(((void*)0), &hImageList);

    if (hImageList)
        SendMessageW( info->hwndTreeView, TVM_SETIMAGELIST, 0, (LPARAM)hImageList );
    pidlParent = ILClone(root);
    ILRemoveLastID(pidlParent);
    pidlChild = ILClone(ILFindLastID(root));

    if (_ILIsDesktop(pidlParent)) {
        hr = SHGetDesktopFolder(&lpsfParent);
    } else {
        IShellFolder *lpsfDesktop;
        hr = SHGetDesktopFolder(&lpsfDesktop);
        if (FAILED(hr)) {
            WARN("SHGetDesktopFolder failed! hr = %08x\n", hr);
            ILFree(pidlChild);
            ILFree(pidlParent);
            return;
        }
        hr = IShellFolder_BindToObject(lpsfDesktop, pidlParent, 0, &IID_IShellFolder, (LPVOID*)&lpsfParent);
        IShellFolder_Release(lpsfDesktop);
    }

    if (FAILED(hr)) {
        WARN("Could not bind to parent shell folder! hr = %08x\n", hr);
        ILFree(pidlChild);
        ILFree(pidlParent);
        return;
    }

    if (!_ILIsEmpty(pidlChild)) {
        hr = IShellFolder_BindToObject(lpsfParent, pidlChild, 0, &IID_IShellFolder, (LPVOID*)&lpsfRoot);
    } else {
        lpsfRoot = lpsfParent;
        hr = IShellFolder_AddRef(lpsfParent);
    }

    if (FAILED(hr)) {
        WARN("Could not bind to root shell folder! hr = %08x\n", hr);
        IShellFolder_Release(lpsfParent);
        ILFree(pidlChild);
        ILFree(pidlParent);
        return;
    }

    flags = BrowseFlagsToSHCONTF( info->lpBrowseInfo->ulFlags );
    hr = IShellFolder_EnumObjects( lpsfRoot, info->hWnd, flags, &pEnumChildren );
    if (FAILED(hr)) {
        WARN("Could not get child iterator! hr = %08x\n", hr);
        IShellFolder_Release(lpsfParent);
        IShellFolder_Release(lpsfRoot);
        ILFree(pidlChild);
        ILFree(pidlParent);
        return;
    }

    SendMessageW( info->hwndTreeView, TVM_DELETEITEM, 0, (LPARAM)TVI_ROOT );
    item = InsertTreeViewItem( info, lpsfParent, pidlChild,
                               pidlParent, pEnumChildren, TVI_ROOT );
    SendMessageW( info->hwndTreeView, TVM_EXPAND, TVE_EXPAND, (LPARAM)item );

    ILFree(pidlChild);
    ILFree(pidlParent);
    IShellFolder_Release(lpsfRoot);
    IShellFolder_Release(lpsfParent);
}
