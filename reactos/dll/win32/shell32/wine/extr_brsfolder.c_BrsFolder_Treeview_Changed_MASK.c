#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ pidlRet; int /*<<< orphan*/  hWnd; int /*<<< orphan*/  lpBrowseInfo; } ;
typedef  TYPE_2__ browse_info ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_12__ {int /*<<< orphan*/  lpi; int /*<<< orphan*/  lpsfParent; int /*<<< orphan*/  lpifq; } ;
struct TYPE_9__ {int /*<<< orphan*/  lParam; } ;
struct TYPE_11__ {TYPE_1__ itemNew; } ;
typedef  TYPE_3__ NMTREEVIEWW ;
typedef  TYPE_4__* LPTV_ITEMDATA ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  BFFM_SELCHANGED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IDC_BROWSE_FOR_FOLDER_FOLDER_TEXT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  SHGDN_NORMAL ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC7( browse_info *info, NMTREEVIEWW *pnmtv )
{
    LPTV_ITEMDATA lptvid = (LPTV_ITEMDATA) pnmtv->itemNew.lParam;
    WCHAR name[MAX_PATH];

    FUNC4(info->pidlRet);
    info->pidlRet = FUNC3(lptvid->lpifq);

    if (FUNC2(lptvid->lpsfParent, lptvid->lpi, SHGDN_NORMAL, name))
            FUNC5( FUNC1(info->hWnd, IDC_BROWSE_FOR_FOLDER_FOLDER_TEXT), name );

    FUNC6( info->lpBrowseInfo, info->hWnd, BFFM_SELCHANGED,
                           (LPARAM)info->pidlRet );
    FUNC0( info, lptvid );
    return S_OK;
}