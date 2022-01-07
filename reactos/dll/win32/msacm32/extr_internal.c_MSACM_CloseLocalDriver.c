
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int lpDrvProc; int hModule; } ;
struct TYPE_8__ {scalar_t__ dwDriverID; scalar_t__ bSession; TYPE_2__* pLocalDriver; } ;
typedef TYPE_1__* PWINE_ACMLOCALDRIVERINST ;
typedef TYPE_2__* PWINE_ACMLOCALDRIVER ;
typedef int LRESULT ;


 int DRV_CLOSE ;
 int ERR (char*,...) ;
 int FALSE ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int MSACM_DRIVER_SendMessage (TYPE_1__*,int ,long,long) ;
 int MSACM_GetNumberOfModuleRefs (int ,int ,TYPE_1__**) ;
 scalar_t__ MSACM_RemoveFromList (TYPE_1__*) ;
 int MSACM_hHeap ;
 int TRUE ;

LRESULT MSACM_CloseLocalDriver(PWINE_ACMLOCALDRIVERINST paldrv)
{
    if (MSACM_RemoveFromList(paldrv)) {
        PWINE_ACMLOCALDRIVERINST lpDrv0;
        PWINE_ACMLOCALDRIVER pDriverBase = paldrv->pLocalDriver;

        MSACM_DRIVER_SendMessage(paldrv, DRV_CLOSE, 0, 0);
        paldrv->dwDriverID = 0;

        if (paldrv->bSession)
            ERR("should not directly close session instance (%p)\n", paldrv);


        if (MSACM_GetNumberOfModuleRefs(pDriverBase->hModule, pDriverBase->lpDrvProc, &lpDrv0) == 1 &&
                lpDrv0->bSession)
        {
            MSACM_DRIVER_SendMessage(lpDrv0, DRV_CLOSE, 0L, 0L);
            lpDrv0->dwDriverID = 0;
            MSACM_RemoveFromList(lpDrv0);
            HeapFree(MSACM_hHeap, 0, lpDrv0);
        }

        HeapFree(MSACM_hHeap, 0, paldrv);
        return TRUE;
    }
    ERR("unable to close driver instance\n");
    return FALSE;
}
