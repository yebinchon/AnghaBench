
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IsAcquired; int Irql; int QueueNumber; } ;
typedef int PKSPIN_LOCK ;
typedef TYPE_1__* PCHECK_DATA ;
typedef int BOOLEAN ;


 int KeTryToAcquireQueuedSpinLockRaiseToSynch (int ,int *) ;
 int TRUE ;

BOOLEAN TryQueuedSynch(PKSPIN_LOCK SpinLock, PCHECK_DATA CheckData) {
    BOOLEAN Ret = KeTryToAcquireQueuedSpinLockRaiseToSynch(CheckData->QueueNumber, &CheckData->Irql);
    CheckData->IsAcquired = TRUE;
    return Ret;
}
