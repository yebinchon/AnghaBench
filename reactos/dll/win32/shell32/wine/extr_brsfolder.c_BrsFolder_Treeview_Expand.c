
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int hwndTreeView; } ;
typedef TYPE_2__ browse_info ;
struct TYPE_11__ {int lpi; int pEnumIL; int lpifq; int * lpsfParent; } ;
struct TYPE_8__ {int state; scalar_t__ hItem; int lParam; } ;
struct TYPE_10__ {TYPE_1__ itemNew; } ;
typedef TYPE_3__ NMTREEVIEWW ;
typedef int LRESULT ;
typedef TYPE_4__* LPTV_ITEMDATA ;
typedef int LPARAM ;
typedef int IShellFolder ;
typedef int HRESULT ;


 int FALSE ;
 int FillTreeView (TYPE_2__*,int *,int ,scalar_t__,int ) ;
 int IID_IShellFolder ;
 int IShellFolder_AddRef (int *) ;
 int IShellFolder_BindToObject (int *,int ,int ,int *,void**) ;
 int IShellFolder_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*) ;
 int TVIS_EXPANDEDONCE ;
 int TVM_SORTCHILDREN ;
 int _ILIsEmpty (int ) ;
 int _ILIsMyComputer (int ) ;

__attribute__((used)) static LRESULT BrsFolder_Treeview_Expand( browse_info *info, NMTREEVIEWW *pnmtv )
{
    IShellFolder *lpsf2 = ((void*)0);
    LPTV_ITEMDATA lptvid = (LPTV_ITEMDATA) pnmtv->itemNew.lParam;
    HRESULT r;

    TRACE("TVN_ITEMEXPANDINGA/W\n");

    if ((pnmtv->itemNew.state & TVIS_EXPANDEDONCE))
        return 0;

    if (!_ILIsEmpty(lptvid->lpi)) {
        r = IShellFolder_BindToObject( lptvid->lpsfParent, lptvid->lpi, 0,
                                       &IID_IShellFolder, (void**)&lpsf2 );
    } else {
        lpsf2 = lptvid->lpsfParent;
        IShellFolder_AddRef(lpsf2);
        r = S_OK;
    }

    if (SUCCEEDED(r))
    {
        FillTreeView( info, lpsf2, lptvid->lpifq, pnmtv->itemNew.hItem, lptvid->pEnumIL);
        IShellFolder_Release( lpsf2 );
    }



    if (!_ILIsMyComputer(lptvid->lpi))
        SendMessageW( info->hwndTreeView, TVM_SORTCHILDREN,
                      FALSE, (LPARAM)pnmtv->itemNew.hItem );

    return 0;
}
