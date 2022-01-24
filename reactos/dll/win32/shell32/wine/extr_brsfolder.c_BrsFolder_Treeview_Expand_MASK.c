#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  hwndTreeView; } ;
typedef  TYPE_2__ browse_info ;
struct TYPE_11__ {int /*<<< orphan*/  lpi; int /*<<< orphan*/  pEnumIL; int /*<<< orphan*/  lpifq; int /*<<< orphan*/ * lpsfParent; } ;
struct TYPE_8__ {int state; scalar_t__ hItem; int /*<<< orphan*/  lParam; } ;
struct TYPE_10__ {TYPE_1__ itemNew; } ;
typedef  TYPE_3__ NMTREEVIEWW ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_4__* LPTV_ITEMDATA ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IShellFolder ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int TVIS_EXPANDEDONCE ; 
 int /*<<< orphan*/  TVM_SORTCHILDREN ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT FUNC9( browse_info *info, NMTREEVIEWW *pnmtv )
{
    IShellFolder *lpsf2 = NULL;
    LPTV_ITEMDATA lptvid = (LPTV_ITEMDATA) pnmtv->itemNew.lParam;
    HRESULT r;

    FUNC6("TVN_ITEMEXPANDINGA/W\n");

    if ((pnmtv->itemNew.state & TVIS_EXPANDEDONCE))
        return 0;

    if (!FUNC7(lptvid->lpi)) {
        r = FUNC2( lptvid->lpsfParent, lptvid->lpi, 0,
                                       &IID_IShellFolder, (void**)&lpsf2 );
    } else {
        lpsf2 = lptvid->lpsfParent;
        FUNC1(lpsf2);
        r = S_OK;
    }

    if (FUNC4(r))
    {
        FUNC0( info, lpsf2, lptvid->lpifq, pnmtv->itemNew.hItem, lptvid->pEnumIL);
        FUNC3( lpsf2 );
    }

    /* My Computer is already sorted and trying to do a simple text
     * sort will only mess things up */
    if (!FUNC8(lptvid->lpi))
        FUNC5( info->hwndTreeView, TVM_SORTCHILDREN,
                      FALSE, (LPARAM)pnmtv->itemNew.hItem );

    return 0;
}