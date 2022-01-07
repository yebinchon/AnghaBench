
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* pACMInstList; int lpDrvProc; int hModule; } ;
struct TYPE_6__ {struct TYPE_6__* pNextACMInst; TYPE_2__* pLocalDriver; } ;
typedef TYPE_1__* PWINE_ACMLOCALDRIVERINST ;
typedef TYPE_2__* PWINE_ACMLOCALDRIVER ;
typedef int BOOL ;


 int DRV_DISABLE ;
 int DRV_FREE ;
 int ERR (char*,TYPE_1__*) ;
 int FALSE ;
 int MSACM_DRIVER_SendMessage (TYPE_1__*,int ,long,long) ;
 int MSACM_GetNumberOfModuleRefs (int ,int ,int *) ;
 int TRUE ;

__attribute__((used)) static BOOL MSACM_RemoveFromList(PWINE_ACMLOCALDRIVERINST lpDrv)
{
    PWINE_ACMLOCALDRIVER pDriverBase = lpDrv->pLocalDriver;
    PWINE_ACMLOCALDRIVERINST pPrevInst;


    if (MSACM_GetNumberOfModuleRefs(pDriverBase->hModule, pDriverBase->lpDrvProc, ((void*)0)) == 1) {
        MSACM_DRIVER_SendMessage(lpDrv, DRV_DISABLE, 0L, 0L);
        MSACM_DRIVER_SendMessage(lpDrv, DRV_FREE, 0L, 0L);
    }

    pPrevInst = ((void*)0);
    if (pDriverBase->pACMInstList != lpDrv) {
        pPrevInst = pDriverBase->pACMInstList;
        while (pPrevInst && pPrevInst->pNextACMInst != lpDrv)
            pPrevInst = pPrevInst->pNextACMInst;
        if (!pPrevInst) {
            ERR("requested to remove invalid instance %p\n", pPrevInst);
            return FALSE;
        }
    }
    if (!pPrevInst) {

        pDriverBase->pACMInstList = lpDrv->pNextACMInst;
    } else {
        pPrevInst->pNextACMInst = lpDrv->pNextACMInst;
    }
    return TRUE;
}
