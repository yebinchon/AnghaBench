
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PKSPIN_LOCK ;


 int KeReleaseSpinLockFromDpcLevel (int ) ;

VOID TcpipReleaseSpinLockFromDpcLevel( PKSPIN_LOCK SpinLock ) {
    KeReleaseSpinLockFromDpcLevel( SpinLock );
}
