#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  hwndTreeView; } ;
typedef  TYPE_2__ browse_info ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_14__ {void* lpifq; int /*<<< orphan*/ * pEnumIL; void* lpi; int /*<<< orphan*/ * lpsfParent; } ;
struct TYPE_12__ {int mask; int cChildren; int cchTextMax; scalar_t__ lParam; int /*<<< orphan*/ * pszText; } ;
struct TYPE_10__ {TYPE_3__ item; } ;
struct TYPE_13__ {int /*<<< orphan*/ * hParent; int /*<<< orphan*/ * hInsertAfter; TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  TV_ITEMDATA ;
typedef  TYPE_3__ TVITEMW ;
typedef  TYPE_4__ TVINSERTSTRUCTW ;
typedef  TYPE_5__* LPTV_ITEMDATA ;
typedef  scalar_t__ LPCITEMIDLIST ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/  IEnumIDList ;
typedef  int /*<<< orphan*/ * HTREEITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,TYPE_3__*) ; 
 void* FUNC2 (scalar_t__) ; 
 void* FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 TYPE_5__* FUNC5 (int) ; 
 int /*<<< orphan*/  SHGDN_NORMAL ; 
 int TVIF_CHILDREN ; 
 int TVIF_IMAGE ; 
 int TVIF_PARAM ; 
 int TVIF_SELECTEDIMAGE ; 
 int TVIF_TEXT ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static HTREEITEM FUNC7( browse_info *info, IShellFolder * lpsf,
    LPCITEMIDLIST pidl, LPCITEMIDLIST pidlParent, IEnumIDList* pEnumIL,
    HTREEITEM hParent)
{
	TVITEMW 	tvi;
	TVINSERTSTRUCTW	tvins;
	WCHAR		szBuff[MAX_PATH];
	LPTV_ITEMDATA	lptvid=0;

	tvi.mask  = TVIF_TEXT | TVIF_IMAGE | TVIF_SELECTEDIMAGE | TVIF_PARAM;

	tvi.cChildren= pEnumIL ? 1 : 0;
	tvi.mask |= TVIF_CHILDREN;

	if (!FUNC0(lpsf, pidl, SHGDN_NORMAL, szBuff))
	    return NULL;

	lptvid = FUNC5( sizeof(TV_ITEMDATA) );
	if (!lptvid)
	    return NULL;

	tvi.pszText    = szBuff;
	tvi.cchTextMax = MAX_PATH;
	tvi.lParam = (LPARAM)lptvid;

	FUNC4(lpsf);
	lptvid->lpsfParent = lpsf;
	lptvid->lpi	= FUNC2(pidl);
	lptvid->lpifq	= pidlParent ? FUNC3(pidlParent, pidl) : FUNC2(pidl);
	lptvid->pEnumIL = pEnumIL;
	FUNC1(lptvid->lpifq, &tvi);

	tvins.u.item       = tvi;
	tvins.hInsertAfter = NULL;
	tvins.hParent      = hParent;

	return FUNC6( info->hwndTreeView, &tvins );
}