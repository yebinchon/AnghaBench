
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int browse_info ;
struct TYPE_9__ {struct TYPE_9__* lpifq; struct TYPE_9__* lpi; scalar_t__ pEnumIL; int lpsfParent; } ;
struct TYPE_7__ {int lParam; } ;
struct TYPE_8__ {TYPE_1__ itemOld; } ;
typedef TYPE_2__ NMTREEVIEWW ;
typedef int LRESULT ;
typedef TYPE_3__* LPTV_ITEMDATA ;


 int IEnumIDList_Release (scalar_t__) ;
 int IShellFolder_Release (int ) ;
 int SHFree (TYPE_3__*) ;
 int TRACE (char*,TYPE_3__*) ;

__attribute__((used)) static LRESULT BrsFolder_Treeview_Delete( browse_info *info, NMTREEVIEWW *pnmtv )
{
    LPTV_ITEMDATA lptvid = (LPTV_ITEMDATA)pnmtv->itemOld.lParam;

    TRACE("TVN_DELETEITEMA/W %p\n", lptvid);

    IShellFolder_Release(lptvid->lpsfParent);
    if (lptvid->pEnumIL)
        IEnumIDList_Release(lptvid->pEnumIL);
    SHFree(lptvid->lpi);
    SHFree(lptvid->lpifq);
    SHFree(lptvid);
    return 0;
}
