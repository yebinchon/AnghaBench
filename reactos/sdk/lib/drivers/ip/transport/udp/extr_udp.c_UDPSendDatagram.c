
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int USHORT ;
typedef int ULONG ;
struct TYPE_23__ {int IPv4Address; } ;
struct TYPE_31__ {TYPE_1__ Address; int Type; } ;
struct TYPE_30__ {int Port; TYPE_9__ Address; } ;
struct TYPE_29__ {TYPE_4__* Interface; } ;
struct TYPE_28__ {TYPE_3__* Address; } ;
struct TYPE_27__ {int RemoteAddress; } ;
struct TYPE_26__ {TYPE_9__ Unicast; } ;
struct TYPE_25__ {int AddressType; TYPE_2__* Address; } ;
struct TYPE_24__ {int sin_port; int in_addr; } ;
typedef int * PULONG ;
typedef TYPE_5__* PTDI_CONNECTION_INFORMATION ;
typedef TYPE_6__* PTA_IP_ADDRESS ;
typedef TYPE_7__* PNEIGHBOR_CACHE_ENTRY ;
typedef int PCHAR ;
typedef TYPE_8__* PADDRESS_FILE ;
typedef int NTSTATUS ;
typedef int KIRQL ;
typedef int IP_PACKET ;
typedef TYPE_9__ IP_ADDRESS ;


 scalar_t__ AddrIsUnspecified (TYPE_9__*) ;
 int BuildUDPPacket (TYPE_8__*,int *,TYPE_9__*,int ,TYPE_9__*,int ,int ,int ) ;
 int IPSendDatagram (int *,TYPE_7__*) ;
 int IP_ADDRESS_V4 ;
 int LockObject (TYPE_8__*,int *) ;
 int MID_TRACE ;
 TYPE_7__* NBLocateNeighbor (TYPE_9__*,int *) ;
 int NT_SUCCESS (int ) ;
 TYPE_7__* RouteGetRouteToDestination (TYPE_9__*) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_NETWORK_UNREACHABLE ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;

 int TI_DbgPrint (int ,char*) ;
 int UnlockObject (TYPE_8__*,int ) ;

NTSTATUS UDPSendDatagram(
    PADDRESS_FILE AddrFile,
    PTDI_CONNECTION_INFORMATION ConnInfo,
    PCHAR BufferData,
    ULONG DataSize,
    PULONG DataUsed )
{
    IP_PACKET Packet;
    PTA_IP_ADDRESS RemoteAddressTa = (PTA_IP_ADDRESS)ConnInfo->RemoteAddress;
    IP_ADDRESS RemoteAddress;
    IP_ADDRESS LocalAddress;
    USHORT RemotePort;
    NTSTATUS Status;
    PNEIGHBOR_CACHE_ENTRY NCE;
    KIRQL OldIrql;

    LockObject(AddrFile, &OldIrql);

    TI_DbgPrint(MID_TRACE,("Sending Datagram(%x %x %x %d)\n",
         AddrFile, ConnInfo, BufferData, DataSize));
    TI_DbgPrint(MID_TRACE,("RemoteAddressTa: %x\n", RemoteAddressTa));

    switch( RemoteAddressTa->Address[0].AddressType ) {
    case 128:
  RemoteAddress.Type = IP_ADDRESS_V4;
  RemoteAddress.Address.IPv4Address =
   RemoteAddressTa->Address[0].Address[0].in_addr;
  RemotePort = RemoteAddressTa->Address[0].Address[0].sin_port;
  break;

    default:
  UnlockObject(AddrFile, OldIrql);
  return STATUS_UNSUCCESSFUL;
    }

    LocalAddress = AddrFile->Address;
    if (AddrIsUnspecified(&LocalAddress))
    {




        if(!(NCE = RouteGetRouteToDestination( &RemoteAddress ))) {
            UnlockObject(AddrFile, OldIrql);
            return STATUS_NETWORK_UNREACHABLE;
        }

        LocalAddress = NCE->Interface->Unicast;
    }
    else
    {
        if(!(NCE = NBLocateNeighbor( &LocalAddress, ((void*)0) ))) {
            UnlockObject(AddrFile, OldIrql);
            return STATUS_INVALID_PARAMETER;
        }
    }

    Status = BuildUDPPacket( AddrFile,
        &Packet,
        &RemoteAddress,
        RemotePort,
        &LocalAddress,
        AddrFile->Port,
        BufferData,
        DataSize );

    UnlockObject(AddrFile, OldIrql);

    if( !NT_SUCCESS(Status) )
  return Status;

    Status = IPSendDatagram(&Packet, NCE);
    if (!NT_SUCCESS(Status))
        return Status;

    *DataUsed = DataSize;

    return STATUS_SUCCESS;
}
