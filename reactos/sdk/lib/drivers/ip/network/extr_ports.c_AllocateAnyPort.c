
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_3__ {scalar_t__ StartingPort; int Lock; int ProtoBitmap; } ;
typedef TYPE_1__* PPORT_SET ;
typedef int KIRQL ;


 int KeAcquireSpinLock (int *,int *) ;
 int KeReleaseSpinLock (int *,int ) ;
 scalar_t__ RtlFindClearBits (int *,int,int ) ;
 int RtlSetBit (int *,scalar_t__) ;
 scalar_t__ htons (scalar_t__) ;

ULONG AllocateAnyPort( PPORT_SET PortSet ) {
    ULONG AllocatedPort;
    KIRQL OldIrql;

    KeAcquireSpinLock( &PortSet->Lock, &OldIrql );
    AllocatedPort = RtlFindClearBits( &PortSet->ProtoBitmap, 1, 0 );
    if( AllocatedPort != (ULONG)-1 ) {
 RtlSetBit( &PortSet->ProtoBitmap, AllocatedPort );
 AllocatedPort += PortSet->StartingPort;
 KeReleaseSpinLock( &PortSet->Lock, OldIrql );
 return htons(AllocatedPort);
    }
    KeReleaseSpinLock( &PortSet->Lock, OldIrql );

    return -1;
}
