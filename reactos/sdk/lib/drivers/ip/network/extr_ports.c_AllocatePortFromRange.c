
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_3__ {scalar_t__ StartingPort; scalar_t__ PortsToOversee; int Lock; int ProtoBitmap; } ;
typedef TYPE_1__* PPORT_SET ;
typedef int KIRQL ;


 int KeAcquireSpinLock (int *,int *) ;
 int KeReleaseSpinLock (int *,int ) ;
 scalar_t__ RtlFindClearBits (int *,int,scalar_t__) ;
 int RtlSetBit (int *,scalar_t__) ;
 scalar_t__ htons (scalar_t__) ;

ULONG AllocatePortFromRange( PPORT_SET PortSet, ULONG Lowest, ULONG Highest ) {
    ULONG AllocatedPort;
    KIRQL OldIrql;

    if ((Lowest < PortSet->StartingPort) ||
        (Highest >= PortSet->StartingPort + PortSet->PortsToOversee))
    {
        return -1;
    }

    Lowest -= PortSet->StartingPort;
    Highest -= PortSet->StartingPort;

    KeAcquireSpinLock( &PortSet->Lock, &OldIrql );
    AllocatedPort = RtlFindClearBits( &PortSet->ProtoBitmap, 1, Lowest );
    if( AllocatedPort != (ULONG)-1 && AllocatedPort <= Highest) {
 RtlSetBit( &PortSet->ProtoBitmap, AllocatedPort );
 AllocatedPort += PortSet->StartingPort;
 KeReleaseSpinLock( &PortSet->Lock, OldIrql );
 return htons(AllocatedPort);
    }
    KeReleaseSpinLock( &PortSet->Lock, OldIrql );

    return -1;
}
