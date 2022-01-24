#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINE_ACMLOCALDRIVERINST ;
struct TYPE_11__ {int /*<<< orphan*/  lpDrvProc; int /*<<< orphan*/  hModule; } ;
struct TYPE_10__ {int /*<<< orphan*/  bSession; int /*<<< orphan*/ * pNextACMInst; scalar_t__ dwDriverID; TYPE_2__* pLocalDriver; } ;
typedef  TYPE_1__* PWINE_ACMLOCALDRIVERINST ;
typedef  TYPE_2__* PWINE_ACMLOCALDRIVER ;
typedef  long LPARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSACM_hHeap ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 

PWINE_ACMLOCALDRIVERINST FUNC7(PWINE_ACMLOCALDRIVER paldrv, LPARAM lParam2)
{
    PWINE_ACMLOCALDRIVERINST pDrvInst;
    
    pDrvInst = FUNC1(MSACM_hHeap, 0, sizeof(WINE_ACMLOCALDRIVERINST));
    if (!pDrvInst)
        return NULL;

    pDrvInst->pLocalDriver = paldrv;
    pDrvInst->dwDriverID = 0;
    pDrvInst->pNextACMInst = NULL;
    pDrvInst->bSession = FALSE;
    
    /* Win32 installable drivers must support a two phase opening scheme:
     * + first open with NULL as lParam2 (session instance),
     * + then do a second open with the real non null lParam2)
     */
    if (FUNC5(paldrv->hModule, paldrv->lpDrvProc, NULL) == 0 && lParam2)
    {
        PWINE_ACMLOCALDRIVERINST   ret;

        if (!FUNC3(pDrvInst, 0L))
        {
            FUNC0("load0 failed\n");
            goto exit;
        }
        ret = FUNC7(paldrv, lParam2);
        if (!ret)
        {
            FUNC0("load1 failed\n");
            /* If MSACM_CloseLocalDriver returns TRUE,
             * then pDrvInst has been freed
             */
            if (!FUNC4(pDrvInst))
                goto exit;

            return NULL;
        }
        pDrvInst->bSession = TRUE;
        return ret;
    }
    
    if (!FUNC3(pDrvInst, lParam2))
    {
        FUNC0("load failed\n");
        goto exit;
    }

    FUNC6("=> %p\n", pDrvInst);
    return pDrvInst;
exit:
    FUNC2(MSACM_hHeap, 0, pDrvInst);
    return NULL;
}