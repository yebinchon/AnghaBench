
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PKSPIN_LOCK ;


 int ASSERT (int) ;
 scalar_t__ DISPATCH_LEVEL ;
 scalar_t__ KernelIrql ;

VOID TcpipAcquireSpinLockAtDpcLevel( PKSPIN_LOCK SpinLock ) {
    ASSERT(KernelIrql == DISPATCH_LEVEL);
}
