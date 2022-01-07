
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int hwndTreeView; } ;
typedef TYPE_2__ browse_info ;
typedef int WCHAR ;
struct TYPE_14__ {void* lpifq; int * pEnumIL; void* lpi; int * lpsfParent; } ;
struct TYPE_12__ {int mask; int cChildren; int cchTextMax; scalar_t__ lParam; int * pszText; } ;
struct TYPE_10__ {TYPE_3__ item; } ;
struct TYPE_13__ {int * hParent; int * hInsertAfter; TYPE_1__ u; } ;
typedef int TV_ITEMDATA ;
typedef TYPE_3__ TVITEMW ;
typedef TYPE_4__ TVINSERTSTRUCTW ;
typedef TYPE_5__* LPTV_ITEMDATA ;
typedef scalar_t__ LPCITEMIDLIST ;
typedef scalar_t__ LPARAM ;
typedef int IShellFolder ;
typedef int IEnumIDList ;
typedef int * HTREEITEM ;


 int GetName (int *,scalar_t__,int ,int *) ;
 int GetNormalAndSelectedIcons (void*,TYPE_3__*) ;
 void* ILClone (scalar_t__) ;
 void* ILCombine (scalar_t__,scalar_t__) ;
 int IShellFolder_AddRef (int *) ;
 int MAX_PATH ;
 TYPE_5__* SHAlloc (int) ;
 int SHGDN_NORMAL ;
 int TVIF_CHILDREN ;
 int TVIF_IMAGE ;
 int TVIF_PARAM ;
 int TVIF_SELECTEDIMAGE ;
 int TVIF_TEXT ;
 int * TreeView_InsertItem (int ,TYPE_4__*) ;

__attribute__((used)) static HTREEITEM InsertTreeViewItem( browse_info *info, IShellFolder * lpsf,
    LPCITEMIDLIST pidl, LPCITEMIDLIST pidlParent, IEnumIDList* pEnumIL,
    HTREEITEM hParent)
{
 TVITEMW tvi;
 TVINSERTSTRUCTW tvins;
 WCHAR szBuff[MAX_PATH];
 LPTV_ITEMDATA lptvid=0;

 tvi.mask = TVIF_TEXT | TVIF_IMAGE | TVIF_SELECTEDIMAGE | TVIF_PARAM;

 tvi.cChildren= pEnumIL ? 1 : 0;
 tvi.mask |= TVIF_CHILDREN;

 if (!GetName(lpsf, pidl, SHGDN_NORMAL, szBuff))
     return ((void*)0);

 lptvid = SHAlloc( sizeof(TV_ITEMDATA) );
 if (!lptvid)
     return ((void*)0);

 tvi.pszText = szBuff;
 tvi.cchTextMax = MAX_PATH;
 tvi.lParam = (LPARAM)lptvid;

 IShellFolder_AddRef(lpsf);
 lptvid->lpsfParent = lpsf;
 lptvid->lpi = ILClone(pidl);
 lptvid->lpifq = pidlParent ? ILCombine(pidlParent, pidl) : ILClone(pidl);
 lptvid->pEnumIL = pEnumIL;
 GetNormalAndSelectedIcons(lptvid->lpifq, &tvi);

 tvins.u.item = tvi;
 tvins.hInsertAfter = ((void*)0);
 tvins.hParent = hParent;

 return TreeView_InsertItem( info->hwndTreeView, &tvins );
}
