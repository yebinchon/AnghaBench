
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PKSPIN_LOCK ;
typedef scalar_t__ KIRQL ;


 int ASSERT (int) ;
 scalar_t__ KernelIrql ;

VOID TcpipReleaseSpinLock( PKSPIN_LOCK SpinLock, KIRQL Irql ) {
    ASSERT( Irql <= KernelIrql );
    KernelIrql = Irql;
}
