#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  hWnd; int /*<<< orphan*/ * pidlRet; TYPE_2__* lpBrowseInfo; } ;
typedef  TYPE_1__ browse_info ;
typedef  int UINT ;
struct TYPE_6__ {int /*<<< orphan*/  pszDisplayName; } ;
typedef  TYPE_2__* LPBROWSEINFOW ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FALSE ; 
#define  IDCANCEL 130 
#define  IDC_BROWSE_FOR_FOLDER_NEW_FOLDER 129 
#define  IDOK 128 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC6( browse_info *info, UINT id )
{
    LPBROWSEINFOW lpBrowseInfo = info->lpBrowseInfo;

    switch (id)
    {
    case IDOK:
#ifdef __REACTOS__
        /* The original pidl is owned by the treeview and will be free'd. */
        info->pidlRet = ILClone(info->pidlRet);
#endif
        if (info->pidlRet == NULL) /* A null pidl would mean a cancel */
            info->pidlRet = FUNC4();
        FUNC5( info->pidlRet );
        if (lpBrowseInfo->pszDisplayName)
            FUNC3( info->pidlRet, lpBrowseInfo->pszDisplayName );
        FUNC1( info->hWnd, 1 );
        return TRUE;

    case IDCANCEL:
        FUNC1( info->hWnd, 0 );
        return TRUE;

    case IDC_BROWSE_FOR_FOLDER_NEW_FOLDER:
        FUNC0(info);
        return TRUE;
    }
    return FALSE;
}