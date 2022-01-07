
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ ULONG ;
struct TYPE_3__ {scalar_t__ StartingPort; scalar_t__ PortsToOversee; int Lock; int ProtoBitmap; } ;
typedef TYPE_1__* PPORT_SET ;
typedef int KIRQL ;


 int ASSERT (int) ;
 int KeAcquireSpinLock (int *,int *) ;
 int KeReleaseSpinLock (int *,int ) ;
 int RtlClearBits (int *,scalar_t__,int) ;
 scalar_t__ htons (scalar_t__) ;

VOID DeallocatePort( PPORT_SET PortSet, ULONG Port ) {
    KIRQL OldIrql;

    Port = htons(Port);
    ASSERT(Port >= PortSet->StartingPort);
    ASSERT(Port < PortSet->StartingPort + PortSet->PortsToOversee);

    KeAcquireSpinLock( &PortSet->Lock, &OldIrql );
    RtlClearBits( &PortSet->ProtoBitmap, Port - PortSet->StartingPort, 1 );
    KeReleaseSpinLock( &PortSet->Lock, OldIrql );
}
