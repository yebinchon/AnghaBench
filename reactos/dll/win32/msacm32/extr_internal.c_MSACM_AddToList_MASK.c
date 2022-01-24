#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* pACMInstList; int /*<<< orphan*/  lpDrvProc; int /*<<< orphan*/  hModule; } ;
struct TYPE_7__ {scalar_t__ dwDriverID; struct TYPE_7__* pNextACMInst; TYPE_2__* pLocalDriver; } ;
typedef  TYPE_1__* PWINE_ACMLOCALDRIVERINST ;
typedef  TYPE_2__* PWINE_ACMLOCALDRIVER ;
typedef  long LPARAM ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_ENABLE ; 
 int /*<<< orphan*/  DRV_LOAD ; 
 int /*<<< orphan*/  DRV_OPEN ; 
 scalar_t__ DRV_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,long,long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static	BOOL	FUNC4(PWINE_ACMLOCALDRIVERINST lpNewDrv, LPARAM lParam2)
{
    PWINE_ACMLOCALDRIVER pDriverBase = lpNewDrv->pLocalDriver;

    /* first of this driver in list ? */
    if (FUNC2(pDriverBase->hModule, pDriverBase->lpDrvProc, NULL) == 0) {
        if (FUNC1(lpNewDrv, DRV_LOAD, 0L, 0L) != DRV_SUCCESS) {
            FUNC0("DRV_LOAD failed on driver %p\n", lpNewDrv);
            return FALSE;
        }
        /* returned value is not checked */
        FUNC1(lpNewDrv, DRV_ENABLE, 0L, 0L);
    }

    lpNewDrv->pNextACMInst = NULL;
    if (pDriverBase->pACMInstList == NULL) {
	pDriverBase->pACMInstList = lpNewDrv;
    } else {
        PWINE_ACMLOCALDRIVERINST lpDrvInst = pDriverBase->pACMInstList;
    
        while (lpDrvInst->pNextACMInst != NULL)
            lpDrvInst = lpDrvInst->pNextACMInst;

	lpDrvInst->pNextACMInst = lpNewDrv;
    }

    /* Now just open a new instance of a driver on this module */
    lpNewDrv->dwDriverID = FUNC1(lpNewDrv, DRV_OPEN, 0, lParam2);

    if (lpNewDrv->dwDriverID == 0) {
        FUNC0("DRV_OPEN failed on driver %p\n", lpNewDrv);
        FUNC3(lpNewDrv);
        return FALSE;
    }
    return TRUE;
}