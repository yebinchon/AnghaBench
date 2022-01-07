
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKSPIN_LOCK ;
typedef int PCHECK_DATA ;
typedef int BOOLEAN ;


 int pKeTryToAcquireSpinLockAtDpcLevel (int ) ;

BOOLEAN TryNoRaise(PKSPIN_LOCK SpinLock, PCHECK_DATA CheckData) {
    BOOLEAN Ret = pKeTryToAcquireSpinLockAtDpcLevel(SpinLock);
    return Ret;
}
