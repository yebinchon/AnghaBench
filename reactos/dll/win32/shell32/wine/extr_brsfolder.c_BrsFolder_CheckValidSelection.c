
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int hWnd; TYPE_3__* lpBrowseInfo; } ;
typedef TYPE_1__ browse_info ;
struct TYPE_8__ {int ulFlags; } ;
struct TYPE_7__ {int lpi; int lpsfParent; } ;
typedef TYPE_2__* LPTV_ITEMDATA ;
typedef int LPCITEMIDLIST ;
typedef TYPE_3__* LPBROWSEINFOW ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BOOL ;


 int BFFM_ENABLEOK ;
 int BIF_BROWSEFORCOMPUTER ;
 int BIF_RETURNFSANCESTORS ;
 int BIF_RETURNONLYFSDIRS ;
 int EnableWindow (int ,int ) ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_BROWSE_FOR_FOLDER_NEW_FOLDER ;
 int IShellFolder_GetAttributesOf (int ,int,int *,int*) ;
 int PIDLIsType (int ,int ) ;
 int PT_COMP ;
 int SFGAO_FILESYSANCESTOR ;
 int SFGAO_FILESYSTEM ;
 int SFGAO_FOLDER ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;

__attribute__((used)) static void BrsFolder_CheckValidSelection( browse_info *info, LPTV_ITEMDATA lptvid )
{
    LPBROWSEINFOW lpBrowseInfo = info->lpBrowseInfo;
    LPCITEMIDLIST pidl = lptvid->lpi;
    BOOL bEnabled = TRUE;
    DWORD dwAttributes;
    HRESULT r;

    if ((lpBrowseInfo->ulFlags & BIF_BROWSEFORCOMPUTER) &&
        !PIDLIsType(pidl, PT_COMP))
        bEnabled = FALSE;
    if (lpBrowseInfo->ulFlags & BIF_RETURNFSANCESTORS)
    {
        dwAttributes = SFGAO_FILESYSANCESTOR | SFGAO_FILESYSTEM;
        r = IShellFolder_GetAttributesOf(lptvid->lpsfParent, 1,
                                (LPCITEMIDLIST*)&lptvid->lpi, &dwAttributes);
        if (FAILED(r) || !(dwAttributes & (SFGAO_FILESYSANCESTOR|SFGAO_FILESYSTEM)))
            bEnabled = FALSE;
    }

    dwAttributes = SFGAO_FOLDER | SFGAO_FILESYSTEM;
    r = IShellFolder_GetAttributesOf(lptvid->lpsfParent, 1,
            (LPCITEMIDLIST*)&lptvid->lpi, &dwAttributes);
    if (FAILED(r) ||
            ((dwAttributes & (SFGAO_FOLDER|SFGAO_FILESYSTEM)) != (SFGAO_FOLDER|SFGAO_FILESYSTEM)))
    {
        if (lpBrowseInfo->ulFlags & BIF_RETURNONLYFSDIRS)
            bEnabled = FALSE;
        EnableWindow(GetDlgItem(info->hWnd, IDC_BROWSE_FOR_FOLDER_NEW_FOLDER), FALSE);
    }
    else
        EnableWindow(GetDlgItem(info->hWnd, IDC_BROWSE_FOR_FOLDER_NEW_FOLDER), TRUE);

    SendMessageW(info->hWnd, BFFM_ENABLEOK, 0, bEnabled);
}
