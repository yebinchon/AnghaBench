
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ pidlRet; int hWnd; int lpBrowseInfo; } ;
typedef TYPE_2__ browse_info ;
typedef int WCHAR ;
struct TYPE_12__ {int lpi; int lpsfParent; int lpifq; } ;
struct TYPE_9__ {int lParam; } ;
struct TYPE_11__ {TYPE_1__ itemNew; } ;
typedef TYPE_3__ NMTREEVIEWW ;
typedef TYPE_4__* LPTV_ITEMDATA ;
typedef int LPARAM ;
typedef int HRESULT ;


 int BFFM_SELCHANGED ;
 int BrsFolder_CheckValidSelection (TYPE_2__*,TYPE_4__*) ;
 int GetDlgItem (int ,int ) ;
 scalar_t__ GetName (int ,int ,int ,int *) ;
 int IDC_BROWSE_FOR_FOLDER_FOLDER_TEXT ;
 scalar_t__ ILClone (int ) ;
 int ILFree (scalar_t__) ;
 int MAX_PATH ;
 int SHGDN_NORMAL ;
 int S_OK ;
 int SetWindowTextW (int ,int *) ;
 int browsefolder_callback (int ,int ,int ,int ) ;

__attribute__((used)) static HRESULT BrsFolder_Treeview_Changed( browse_info *info, NMTREEVIEWW *pnmtv )
{
    LPTV_ITEMDATA lptvid = (LPTV_ITEMDATA) pnmtv->itemNew.lParam;
    WCHAR name[MAX_PATH];

    ILFree(info->pidlRet);
    info->pidlRet = ILClone(lptvid->lpifq);

    if (GetName(lptvid->lpsfParent, lptvid->lpi, SHGDN_NORMAL, name))
            SetWindowTextW( GetDlgItem(info->hWnd, IDC_BROWSE_FOR_FOLDER_FOLDER_TEXT), name );

    browsefolder_callback( info->lpBrowseInfo, info->hWnd, BFFM_SELCHANGED,
                           (LPARAM)info->pidlRet );
    BrsFolder_CheckValidSelection( info, lptvid );
    return S_OK;
}
