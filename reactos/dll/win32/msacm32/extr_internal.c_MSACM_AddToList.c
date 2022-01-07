
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* pACMInstList; int lpDrvProc; int hModule; } ;
struct TYPE_7__ {scalar_t__ dwDriverID; struct TYPE_7__* pNextACMInst; TYPE_2__* pLocalDriver; } ;
typedef TYPE_1__* PWINE_ACMLOCALDRIVERINST ;
typedef TYPE_2__* PWINE_ACMLOCALDRIVER ;
typedef long LPARAM ;
typedef int BOOL ;


 int DRV_ENABLE ;
 int DRV_LOAD ;
 int DRV_OPEN ;
 scalar_t__ DRV_SUCCESS ;
 int FALSE ;
 int FIXME (char*,TYPE_1__*) ;
 scalar_t__ MSACM_DRIVER_SendMessage (TYPE_1__*,int ,long,long) ;
 scalar_t__ MSACM_GetNumberOfModuleRefs (int ,int ,int *) ;
 int MSACM_RemoveFromList (TYPE_1__*) ;
 int TRUE ;

__attribute__((used)) static BOOL MSACM_AddToList(PWINE_ACMLOCALDRIVERINST lpNewDrv, LPARAM lParam2)
{
    PWINE_ACMLOCALDRIVER pDriverBase = lpNewDrv->pLocalDriver;


    if (MSACM_GetNumberOfModuleRefs(pDriverBase->hModule, pDriverBase->lpDrvProc, ((void*)0)) == 0) {
        if (MSACM_DRIVER_SendMessage(lpNewDrv, DRV_LOAD, 0L, 0L) != DRV_SUCCESS) {
            FIXME("DRV_LOAD failed on driver %p\n", lpNewDrv);
            return FALSE;
        }

        MSACM_DRIVER_SendMessage(lpNewDrv, DRV_ENABLE, 0L, 0L);
    }

    lpNewDrv->pNextACMInst = ((void*)0);
    if (pDriverBase->pACMInstList == ((void*)0)) {
 pDriverBase->pACMInstList = lpNewDrv;
    } else {
        PWINE_ACMLOCALDRIVERINST lpDrvInst = pDriverBase->pACMInstList;

        while (lpDrvInst->pNextACMInst != ((void*)0))
            lpDrvInst = lpDrvInst->pNextACMInst;

 lpDrvInst->pNextACMInst = lpNewDrv;
    }


    lpNewDrv->dwDriverID = MSACM_DRIVER_SendMessage(lpNewDrv, DRV_OPEN, 0, lParam2);

    if (lpNewDrv->dwDriverID == 0) {
        FIXME("DRV_OPEN failed on driver %p\n", lpNewDrv);
        MSACM_RemoveFromList(lpNewDrv);
        return FALSE;
    }
    return TRUE;
}
