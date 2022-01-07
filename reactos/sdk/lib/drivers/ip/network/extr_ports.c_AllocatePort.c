
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_3__ {scalar_t__ StartingPort; scalar_t__ PortsToOversee; int Lock; int ProtoBitmap; } ;
typedef TYPE_1__* PPORT_SET ;
typedef int KIRQL ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ FALSE ;
 int KeAcquireSpinLock (int *,int *) ;
 int KeReleaseSpinLock (int *,int ) ;
 scalar_t__ RtlAreBitsClear (int *,scalar_t__,int) ;
 int RtlSetBits (int *,scalar_t__,int) ;
 scalar_t__ htons (scalar_t__) ;

BOOLEAN AllocatePort( PPORT_SET PortSet, ULONG Port ) {
    BOOLEAN Clear;
    KIRQL OldIrql;

    Port = htons(Port);

    if ((Port < PortSet->StartingPort) ||
        (Port >= PortSet->StartingPort + PortSet->PortsToOversee))
    {
       return FALSE;
    }

    Port -= PortSet->StartingPort;

    KeAcquireSpinLock( &PortSet->Lock, &OldIrql );
    Clear = RtlAreBitsClear( &PortSet->ProtoBitmap, Port, 1 );
    if( Clear ) RtlSetBits( &PortSet->ProtoBitmap, Port, 1 );
    KeReleaseSpinLock( &PortSet->Lock, OldIrql );

    return Clear;
}
