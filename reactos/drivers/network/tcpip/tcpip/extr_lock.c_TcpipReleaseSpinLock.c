
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PKSPIN_LOCK ;
typedef int KIRQL ;


 int KeReleaseSpinLock (int ,int ) ;

VOID TcpipReleaseSpinLock( PKSPIN_LOCK SpinLock, KIRQL Irql ) {
    KeReleaseSpinLock( SpinLock, Irql );
}
