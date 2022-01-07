
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* pNextACMLocalDrv; struct TYPE_7__* pPrevACMLocalDrv; int ref; scalar_t__ pACMInstList; } ;
typedef TYPE_1__* PWINE_ACMLOCALDRIVER ;
typedef scalar_t__ LONG ;


 int ERR (char*) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 scalar_t__ InterlockedDecrement (int *) ;
 int MSACM_hHeap ;
 TYPE_1__* MSACM_pFirstACMLocalDriver ;
 TYPE_1__* MSACM_pLastACMLocalDriver ;

__attribute__((used)) static PWINE_ACMLOCALDRIVER MSACM_UnregisterLocalDriver(PWINE_ACMLOCALDRIVER paldrv)
{
    PWINE_ACMLOCALDRIVER pNextACMLocalDriver;
    LONG ref;

    if (paldrv->pACMInstList) {
        ERR("local driver instances still present after closing all drivers - memory leak\n");
        return ((void*)0);
    }

    ref = InterlockedDecrement(&paldrv->ref);
    if (ref)
        return paldrv;

    if (paldrv == MSACM_pFirstACMLocalDriver)
        MSACM_pFirstACMLocalDriver = paldrv->pNextACMLocalDrv;
    if (paldrv == MSACM_pLastACMLocalDriver)
        MSACM_pLastACMLocalDriver = paldrv->pPrevACMLocalDrv;

    if (paldrv->pPrevACMLocalDrv)
        paldrv->pPrevACMLocalDrv->pNextACMLocalDrv = paldrv->pNextACMLocalDrv;
    if (paldrv->pNextACMLocalDrv)
        paldrv->pNextACMLocalDrv->pPrevACMLocalDrv = paldrv->pPrevACMLocalDrv;

    pNextACMLocalDriver = paldrv->pNextACMLocalDrv;

    HeapFree(MSACM_hHeap, 0, paldrv);

    return pNextACMLocalDriver;
}
