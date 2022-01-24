#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  hwndTreeView; int /*<<< orphan*/  hWnd; TYPE_1__* lpBrowseInfo; } ;
typedef  TYPE_2__ browse_info ;
struct TYPE_6__ {int /*<<< orphan*/  ulFlags; int /*<<< orphan*/  pidlRoot; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPITEMIDLIST ;
typedef  int /*<<< orphan*/  LPCITEMIDLIST ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/  IEnumIDList ;
typedef  scalar_t__ HTREEITEM ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ HIMAGELIST ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IShellFolder ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  TVE_EXPAND ; 
 scalar_t__ TVI_ROOT ; 
 int /*<<< orphan*/  TVM_DELETEITEM ; 
 int /*<<< orphan*/  TVM_EXPAND ; 
 int /*<<< orphan*/  TVM_SETIMAGELIST ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18( browse_info *info )
{
    LPITEMIDLIST pidlParent, pidlChild;
    HIMAGELIST hImageList;
    HRESULT hr;
    IShellFolder *lpsfParent, *lpsfRoot;
    IEnumIDList * pEnumChildren = NULL;
    HTREEITEM item;
    DWORD flags;
    LPCITEMIDLIST root = info->lpBrowseInfo->pidlRoot;

    FUNC14("%p\n", info );
    
    FUNC13(NULL, &hImageList);

    if (hImageList)
        FUNC12( info->hwndTreeView, TVM_SETIMAGELIST, 0, (LPARAM)hImageList );

    /* We want to call InsertTreeViewItem down the code, in order to insert
     * the root item of the treeview. Due to InsertTreeViewItem's signature, 
     * we need the following to do this:
     *
     * + An ITEMIDLIST corresponding to _the parent_ of root. 
     * + An ITEMIDLIST, which is a relative path from root's parent to root 
     *   (containing a single SHITEMID).
     * + An IShellFolder interface pointer of root's parent folder.
     *
     * If root is 'Desktop', then root's parent is also 'Desktop'.
     */

    pidlParent = FUNC2(root);
    FUNC5(pidlParent);
    pidlChild = FUNC2(FUNC3(root));
    
    if (FUNC16(pidlParent)) {
        hr = FUNC11(&lpsfParent);
    } else {
        IShellFolder *lpsfDesktop;
        hr = FUNC11(&lpsfDesktop);
        if (FUNC1(hr)) {
            FUNC15("SHGetDesktopFolder failed! hr = %08x\n", hr);
            FUNC4(pidlChild);
            FUNC4(pidlParent);
            return;
        }
        hr = FUNC7(lpsfDesktop, pidlParent, 0, &IID_IShellFolder, (LPVOID*)&lpsfParent);
        FUNC9(lpsfDesktop);
    }

    if (FUNC1(hr)) {
        FUNC15("Could not bind to parent shell folder! hr = %08x\n", hr);
        FUNC4(pidlChild);
        FUNC4(pidlParent);
        return;
    }

    if (!FUNC17(pidlChild)) {
        hr = FUNC7(lpsfParent, pidlChild, 0, &IID_IShellFolder, (LPVOID*)&lpsfRoot);
    } else {
        lpsfRoot = lpsfParent;
        hr = FUNC6(lpsfParent);
    }

    if (FUNC1(hr)) {
        FUNC15("Could not bind to root shell folder! hr = %08x\n", hr);
        FUNC9(lpsfParent);
        FUNC4(pidlChild);
        FUNC4(pidlParent);
        return;
    }

    flags = FUNC0( info->lpBrowseInfo->ulFlags );
    hr = FUNC8( lpsfRoot, info->hWnd, flags, &pEnumChildren );
    if (FUNC1(hr)) {
        FUNC15("Could not get child iterator! hr = %08x\n", hr);
        FUNC9(lpsfParent);
        FUNC9(lpsfRoot);
        FUNC4(pidlChild);
        FUNC4(pidlParent);
        return;
    }

    FUNC12( info->hwndTreeView, TVM_DELETEITEM, 0, (LPARAM)TVI_ROOT );
    item = FUNC10( info, lpsfParent, pidlChild,
                               pidlParent, pEnumChildren, TVI_ROOT );
    FUNC12( info->hwndTreeView, TVM_EXPAND, TVE_EXPAND, (LPARAM)item );

    FUNC4(pidlChild);
    FUNC4(pidlParent);
    FUNC9(lpsfRoot);
    FUNC9(lpsfParent);
}