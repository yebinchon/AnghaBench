
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ IsAcquired; int Irql; int QueueNumber; } ;
typedef int PKSPIN_LOCK ;
typedef TYPE_1__* PCHECK_DATA ;
typedef scalar_t__ LOGICAL ;
typedef int BOOLEAN ;


 int ASSERT (int) ;
 scalar_t__ FALSE ;
 scalar_t__ KeTryToAcquireQueuedSpinLock (int ,int *) ;
 scalar_t__ TRUE ;

BOOLEAN TryQueued(PKSPIN_LOCK SpinLock, PCHECK_DATA CheckData) {
    LOGICAL Ret = KeTryToAcquireQueuedSpinLock(CheckData->QueueNumber, &CheckData->Irql);
    CheckData->IsAcquired = TRUE;
    ASSERT(Ret == FALSE || Ret == TRUE);
    return (BOOLEAN)Ret;
}
