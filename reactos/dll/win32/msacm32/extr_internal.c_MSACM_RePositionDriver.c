
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fdwSupport; struct TYPE_5__* pPrevACMDriverID; struct TYPE_5__* pNextACMDriverID; } ;
typedef TYPE_1__* PWINE_ACMDRIVERID ;
typedef int DWORD ;


 int ACMDRIVERDETAILS_SUPPORTF_LOCAL ;
 TYPE_1__* MSACM_pFirstACMDriverID ;
 TYPE_1__* MSACM_pLastACMDriverID ;

void MSACM_RePositionDriver(PWINE_ACMDRIVERID padid, DWORD dwPriority)
{
    PWINE_ACMDRIVERID pTargetPosition = ((void*)0);


    if (MSACM_pFirstACMDriverID == padid) {
        MSACM_pFirstACMDriverID = padid->pNextACMDriverID;
    }
    if (MSACM_pLastACMDriverID == padid) {
        MSACM_pLastACMDriverID = padid->pPrevACMDriverID;
    }
    if (padid->pPrevACMDriverID != ((void*)0)) {
        padid->pPrevACMDriverID->pNextACMDriverID = padid->pNextACMDriverID;
    }
    if (padid->pNextACMDriverID != ((void*)0)) {
        padid->pNextACMDriverID->pPrevACMDriverID = padid->pPrevACMDriverID;
    }


    if (dwPriority == 1) {
        pTargetPosition = padid->pPrevACMDriverID;
        while (pTargetPosition->pPrevACMDriverID != ((void*)0) &&
            !(pTargetPosition->pPrevACMDriverID->fdwSupport & ACMDRIVERDETAILS_SUPPORTF_LOCAL)) {
            pTargetPosition = pTargetPosition->pPrevACMDriverID;
        }
    } else if (dwPriority == -1) {
        pTargetPosition = padid->pNextACMDriverID;
        while (pTargetPosition->pNextACMDriverID != ((void*)0)) {
            pTargetPosition = pTargetPosition->pNextACMDriverID;
        }
    }


    padid->pPrevACMDriverID = pTargetPosition->pPrevACMDriverID;
    padid->pNextACMDriverID = pTargetPosition;
    if (padid->pPrevACMDriverID != ((void*)0)) {
        padid->pPrevACMDriverID->pNextACMDriverID = padid;
    } else {
        MSACM_pFirstACMDriverID = padid;
    }
    if (padid->pNextACMDriverID != ((void*)0)) {
        padid->pNextACMDriverID->pPrevACMDriverID = padid;
    } else {
        MSACM_pLastACMDriverID = padid;
    }
}
