#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  hWnd; TYPE_3__* lpBrowseInfo; } ;
typedef  TYPE_1__ browse_info ;
struct TYPE_8__ {int ulFlags; } ;
struct TYPE_7__ {int /*<<< orphan*/  lpi; int /*<<< orphan*/  lpsfParent; } ;
typedef  TYPE_2__* LPTV_ITEMDATA ;
typedef  int /*<<< orphan*/  LPCITEMIDLIST ;
typedef  TYPE_3__* LPBROWSEINFOW ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BFFM_ENABLEOK ; 
 int BIF_BROWSEFORCOMPUTER ; 
 int BIF_RETURNFSANCESTORS ; 
 int BIF_RETURNONLYFSDIRS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_BROWSE_FOR_FOLDER_NEW_FOLDER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_COMP ; 
 int SFGAO_FILESYSANCESTOR ; 
 int SFGAO_FILESYSTEM ; 
 int SFGAO_FOLDER ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static void FUNC6( browse_info *info, LPTV_ITEMDATA lptvid )
{
    LPBROWSEINFOW lpBrowseInfo = info->lpBrowseInfo;
    LPCITEMIDLIST pidl = lptvid->lpi;
    BOOL bEnabled = TRUE;
    DWORD dwAttributes;
    HRESULT r;

    if ((lpBrowseInfo->ulFlags & BIF_BROWSEFORCOMPUTER) &&
        !FUNC4(pidl, PT_COMP))
        bEnabled = FALSE;
    if (lpBrowseInfo->ulFlags & BIF_RETURNFSANCESTORS)
    {
        dwAttributes = SFGAO_FILESYSANCESTOR | SFGAO_FILESYSTEM;
        r = FUNC3(lptvid->lpsfParent, 1,
                                (LPCITEMIDLIST*)&lptvid->lpi, &dwAttributes);
        if (FUNC1(r) || !(dwAttributes & (SFGAO_FILESYSANCESTOR|SFGAO_FILESYSTEM)))
            bEnabled = FALSE;
    }

    dwAttributes = SFGAO_FOLDER | SFGAO_FILESYSTEM;
    r = FUNC3(lptvid->lpsfParent, 1,
            (LPCITEMIDLIST*)&lptvid->lpi, &dwAttributes);
    if (FUNC1(r) ||
            ((dwAttributes & (SFGAO_FOLDER|SFGAO_FILESYSTEM)) != (SFGAO_FOLDER|SFGAO_FILESYSTEM)))
    {
        if (lpBrowseInfo->ulFlags & BIF_RETURNONLYFSDIRS)
            bEnabled = FALSE;
        FUNC0(FUNC2(info->hWnd, IDC_BROWSE_FOR_FOLDER_NEW_FOLDER), FALSE);
    }
    else
        FUNC0(FUNC2(info->hWnd, IDC_BROWSE_FOR_FOLDER_NEW_FOLDER), TRUE);

    FUNC5(info->hWnd, BFFM_ENABLEOK, 0, bEnabled);
}