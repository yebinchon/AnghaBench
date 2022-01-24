#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* pACMInstList; int /*<<< orphan*/  lpDrvProc; int /*<<< orphan*/  hModule; } ;
struct TYPE_6__ {struct TYPE_6__* pNextACMInst; TYPE_2__* pLocalDriver; } ;
typedef  TYPE_1__* PWINE_ACMLOCALDRIVERINST ;
typedef  TYPE_2__* PWINE_ACMLOCALDRIVER ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_DISABLE ; 
 int /*<<< orphan*/  DRV_FREE ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,long,long) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static	BOOL	FUNC3(PWINE_ACMLOCALDRIVERINST lpDrv)
{
    PWINE_ACMLOCALDRIVER pDriverBase = lpDrv->pLocalDriver;
    PWINE_ACMLOCALDRIVERINST pPrevInst;

    /* last of this driver in list ? */
    if (FUNC2(pDriverBase->hModule, pDriverBase->lpDrvProc, NULL) == 1) {
        FUNC1(lpDrv, DRV_DISABLE, 0L, 0L);
        FUNC1(lpDrv, DRV_FREE,    0L, 0L);
    }
    
    pPrevInst = NULL;
    if (pDriverBase->pACMInstList != lpDrv) {
        pPrevInst = pDriverBase->pACMInstList;
        while (pPrevInst && pPrevInst->pNextACMInst != lpDrv)
            pPrevInst = pPrevInst->pNextACMInst;
        if (!pPrevInst) {
            FUNC0("requested to remove invalid instance %p\n", pPrevInst);
            return FALSE;
        }
    }
    if (!pPrevInst) {
        /* first driver instance on list */
        pDriverBase->pACMInstList = lpDrv->pNextACMInst;
    } else {
        pPrevInst->pNextACMInst = lpDrv->pNextACMInst;
    }
    return TRUE;
}