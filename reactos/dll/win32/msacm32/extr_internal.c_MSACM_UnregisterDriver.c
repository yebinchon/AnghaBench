
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ pLocalDriver; struct TYPE_7__* pNextACMDriverID; struct TYPE_7__* pPrevACMDriverID; struct TYPE_7__* aFormatTag; struct TYPE_7__* pszFileName; struct TYPE_7__* pszDriverAlias; scalar_t__ pACMDriverList; } ;
typedef TYPE_1__* PWINE_ACMDRIVERID ;
typedef int HACMDRIVER ;


 int HeapFree (int ,int ,TYPE_1__*) ;
 int MSACM_UnregisterLocalDriver (scalar_t__) ;
 int MSACM_hHeap ;
 TYPE_1__* MSACM_pFirstACMDriverID ;
 TYPE_1__* MSACM_pLastACMDriverID ;
 int acmDriverClose (int ,int ) ;

PWINE_ACMDRIVERID MSACM_UnregisterDriver(PWINE_ACMDRIVERID p)
{
    PWINE_ACMDRIVERID pNextACMDriverID;

    while (p->pACMDriverList)
 acmDriverClose((HACMDRIVER) p->pACMDriverList, 0);

    HeapFree(MSACM_hHeap, 0, p->pszDriverAlias);
    HeapFree(MSACM_hHeap, 0, p->pszFileName);
    HeapFree(MSACM_hHeap, 0, p->aFormatTag);

    if (p == MSACM_pFirstACMDriverID)
 MSACM_pFirstACMDriverID = p->pNextACMDriverID;
    if (p == MSACM_pLastACMDriverID)
 MSACM_pLastACMDriverID = p->pPrevACMDriverID;

    if (p->pPrevACMDriverID)
 p->pPrevACMDriverID->pNextACMDriverID = p->pNextACMDriverID;
    if (p->pNextACMDriverID)
 p->pNextACMDriverID->pPrevACMDriverID = p->pPrevACMDriverID;

    pNextACMDriverID = p->pNextACMDriverID;

    if (p->pLocalDriver) MSACM_UnregisterLocalDriver(p->pLocalDriver);
    HeapFree(MSACM_hHeap, 0, p);

    return pNextACMDriverID;
}
