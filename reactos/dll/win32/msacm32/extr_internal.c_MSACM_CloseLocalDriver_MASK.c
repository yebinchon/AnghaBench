#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  lpDrvProc; int /*<<< orphan*/  hModule; } ;
struct TYPE_8__ {scalar_t__ dwDriverID; scalar_t__ bSession; TYPE_2__* pLocalDriver; } ;
typedef  TYPE_1__* PWINE_ACMLOCALDRIVERINST ;
typedef  TYPE_2__* PWINE_ACMLOCALDRIVER ;
typedef  int /*<<< orphan*/  LRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,long,long) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  MSACM_hHeap ; 
 int /*<<< orphan*/  TRUE ; 

LRESULT FUNC5(PWINE_ACMLOCALDRIVERINST paldrv)
{
    if (FUNC4(paldrv)) {
        PWINE_ACMLOCALDRIVERINST lpDrv0;
        PWINE_ACMLOCALDRIVER pDriverBase = paldrv->pLocalDriver;
    
        FUNC2(paldrv, DRV_CLOSE, 0, 0);
        paldrv->dwDriverID = 0;
    
        if (paldrv->bSession)
            FUNC0("should not directly close session instance (%p)\n", paldrv);

        /* if driver has an opened session instance, we have to close it too */
        if (FUNC3(pDriverBase->hModule, pDriverBase->lpDrvProc, &lpDrv0) == 1 &&
                lpDrv0->bSession)
        {
            FUNC2(lpDrv0, DRV_CLOSE, 0L, 0L);
            lpDrv0->dwDriverID = 0;
            FUNC4(lpDrv0);
            FUNC1(MSACM_hHeap, 0, lpDrv0);
        }

        FUNC1(MSACM_hHeap, 0, paldrv);
        return TRUE;
    }
    FUNC0("unable to close driver instance\n");
    return FALSE;
}