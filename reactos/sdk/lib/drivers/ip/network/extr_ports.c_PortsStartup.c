
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_3__ {int PortsToOversee; int Lock; int ProtoBitmap; int ProtoBitBuffer; void* StartingPort; } ;
typedef TYPE_1__* PPORT_SET ;
typedef int NTSTATUS ;


 int ExAllocatePoolWithTag (int ,int,int ) ;
 int KeInitializeSpinLock (int *) ;
 int NonPagedPool ;
 int PORT_SET_TAG ;
 int RtlClearAllBits (int *) ;
 int RtlInitializeBitMap (int *,int ,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;

NTSTATUS PortsStartup( PPORT_SET PortSet,
     UINT StartingPort,
     UINT PortsToManage ) {
    PortSet->StartingPort = StartingPort;
    PortSet->PortsToOversee = PortsToManage;

    PortSet->ProtoBitBuffer =
 ExAllocatePoolWithTag( NonPagedPool, (PortSet->PortsToOversee + 7) / 8,
                               PORT_SET_TAG );
    if(!PortSet->ProtoBitBuffer) return STATUS_INSUFFICIENT_RESOURCES;
    RtlInitializeBitMap( &PortSet->ProtoBitmap,
    PortSet->ProtoBitBuffer,
    PortSet->PortsToOversee );
    RtlClearAllBits( &PortSet->ProtoBitmap );
    KeInitializeSpinLock( &PortSet->Lock );
    return STATUS_SUCCESS;
}
