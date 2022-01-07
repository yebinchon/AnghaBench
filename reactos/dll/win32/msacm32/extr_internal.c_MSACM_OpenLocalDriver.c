
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WINE_ACMLOCALDRIVERINST ;
struct TYPE_11__ {int lpDrvProc; int hModule; } ;
struct TYPE_10__ {int bSession; int * pNextACMInst; scalar_t__ dwDriverID; TYPE_2__* pLocalDriver; } ;
typedef TYPE_1__* PWINE_ACMLOCALDRIVERINST ;
typedef TYPE_2__* PWINE_ACMLOCALDRIVER ;
typedef long LPARAM ;


 int ERR (char*) ;
 int FALSE ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int MSACM_AddToList (TYPE_1__*,long) ;
 int MSACM_CloseLocalDriver (TYPE_1__*) ;
 scalar_t__ MSACM_GetNumberOfModuleRefs (int ,int ,int *) ;
 int MSACM_hHeap ;
 int TRACE (char*,TYPE_1__*) ;
 int TRUE ;

PWINE_ACMLOCALDRIVERINST MSACM_OpenLocalDriver(PWINE_ACMLOCALDRIVER paldrv, LPARAM lParam2)
{
    PWINE_ACMLOCALDRIVERINST pDrvInst;

    pDrvInst = HeapAlloc(MSACM_hHeap, 0, sizeof(WINE_ACMLOCALDRIVERINST));
    if (!pDrvInst)
        return ((void*)0);

    pDrvInst->pLocalDriver = paldrv;
    pDrvInst->dwDriverID = 0;
    pDrvInst->pNextACMInst = ((void*)0);
    pDrvInst->bSession = FALSE;





    if (MSACM_GetNumberOfModuleRefs(paldrv->hModule, paldrv->lpDrvProc, ((void*)0)) == 0 && lParam2)
    {
        PWINE_ACMLOCALDRIVERINST ret;

        if (!MSACM_AddToList(pDrvInst, 0L))
        {
            ERR("load0 failed\n");
            goto exit;
        }
        ret = MSACM_OpenLocalDriver(paldrv, lParam2);
        if (!ret)
        {
            ERR("load1 failed\n");



            if (!MSACM_CloseLocalDriver(pDrvInst))
                goto exit;

            return ((void*)0);
        }
        pDrvInst->bSession = TRUE;
        return ret;
    }

    if (!MSACM_AddToList(pDrvInst, lParam2))
    {
        ERR("load failed\n");
        goto exit;
    }

    TRACE("=> %p\n", pDrvInst);
    return pDrvInst;
exit:
    HeapFree(MSACM_hHeap, 0, pDrvInst);
    return ((void*)0);
}
