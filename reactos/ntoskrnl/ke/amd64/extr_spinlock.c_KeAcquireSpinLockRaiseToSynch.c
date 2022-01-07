
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKSPIN_LOCK ;
typedef int KIRQL ;


 int KeRaiseIrql (int ,int *) ;
 int KxAcquireSpinLock (int ) ;
 int SYNCH_LEVEL ;

KIRQL
KeAcquireSpinLockRaiseToSynch(PKSPIN_LOCK SpinLock)
{
    KIRQL OldIrql;


    KeRaiseIrql(SYNCH_LEVEL, &OldIrql);


    KxAcquireSpinLock(SpinLock);
    return OldIrql;
}
