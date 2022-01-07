
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PKSPIN_LOCK ;
typedef int PKIRQL ;


 int KeAcquireSpinLock (int ,int ) ;

VOID TcpipAcquireSpinLock( PKSPIN_LOCK SpinLock, PKIRQL Irql ) {
    KeAcquireSpinLock( SpinLock, Irql );
}
