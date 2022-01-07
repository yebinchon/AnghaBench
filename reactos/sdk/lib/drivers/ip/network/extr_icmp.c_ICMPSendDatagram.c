
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_13__ ;


typedef int ULONG ;
struct TYPE_23__ {int IPv4Address; } ;
struct TYPE_30__ {TYPE_1__ Address; int Type; } ;
struct TYPE_29__ {TYPE_8__ Address; } ;
struct TYPE_28__ {TYPE_13__* Interface; } ;
struct TYPE_27__ {TYPE_3__* Address; } ;
struct TYPE_26__ {int RemoteAddress; } ;
struct TYPE_25__ {int AddressType; TYPE_2__* Address; } ;
struct TYPE_24__ {int in_addr; } ;
struct TYPE_22__ {TYPE_8__ Unicast; } ;
typedef int * PULONG ;
typedef TYPE_4__* PTDI_CONNECTION_INFORMATION ;
typedef TYPE_5__* PTA_IP_ADDRESS ;
typedef TYPE_6__* PNEIGHBOR_CACHE_ENTRY ;
typedef int PCHAR ;
typedef TYPE_7__* PADDRESS_FILE ;
typedef int NTSTATUS ;
typedef int KIRQL ;
typedef int IP_PACKET ;
typedef TYPE_8__ IP_ADDRESS ;


 scalar_t__ AddrIsUnspecified (TYPE_8__*) ;
 int IPSendDatagram (int *,TYPE_6__*) ;
 int IP_ADDRESS_V4 ;
 int LockObject (TYPE_7__*,int *) ;
 int MID_TRACE ;
 TYPE_6__* NBLocateNeighbor (TYPE_8__*,int *) ;
 int NT_SUCCESS (int ) ;
 int PrepareICMPPacket (TYPE_7__*,TYPE_13__*,int *,TYPE_8__*,int ,int ) ;
 TYPE_6__* RouteGetRouteToDestination (TYPE_8__*) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_NETWORK_UNREACHABLE ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;

 int TI_DbgPrint (int ,char*) ;
 int UnlockObject (TYPE_7__*,int ) ;

NTSTATUS ICMPSendDatagram(
    PADDRESS_FILE AddrFile,
    PTDI_CONNECTION_INFORMATION ConnInfo,
    PCHAR BufferData,
    ULONG DataSize,
    PULONG DataUsed )
{
    IP_PACKET Packet;
    PTA_IP_ADDRESS RemoteAddressTa = (PTA_IP_ADDRESS)ConnInfo->RemoteAddress;
    IP_ADDRESS RemoteAddress, LocalAddress;
    NTSTATUS Status;
    PNEIGHBOR_CACHE_ENTRY NCE;
    KIRQL OldIrql;

    TI_DbgPrint(MID_TRACE,("Sending Datagram(%x %x %x %d)\n",
      AddrFile, ConnInfo, BufferData, DataSize));
    TI_DbgPrint(MID_TRACE,("RemoteAddressTa: %x\n", RemoteAddressTa));

    switch( RemoteAddressTa->Address[0].AddressType ) {
        case 128:
            RemoteAddress.Type = IP_ADDRESS_V4;
            RemoteAddress.Address.IPv4Address =
                RemoteAddressTa->Address[0].Address[0].in_addr;
            break;

        default:
            return STATUS_UNSUCCESSFUL;
    }

    TI_DbgPrint(MID_TRACE,("About to get route to destination\n"));

    LockObject(AddrFile, &OldIrql);

    LocalAddress = AddrFile->Address;
    if (AddrIsUnspecified(&LocalAddress))
    {




        if(!(NCE = RouteGetRouteToDestination( &RemoteAddress )))
        {
            UnlockObject(AddrFile, OldIrql);
            return STATUS_NETWORK_UNREACHABLE;
        }

        LocalAddress = NCE->Interface->Unicast;
    }
    else
    {
        if(!(NCE = NBLocateNeighbor( &LocalAddress, ((void*)0) )))
        {
            UnlockObject(AddrFile, OldIrql);
            return STATUS_INVALID_PARAMETER;
        }
    }

    Status = PrepareICMPPacket( AddrFile,
                                NCE->Interface,
                                &Packet,
                                &RemoteAddress,
                                BufferData,
                                DataSize );

    UnlockObject(AddrFile, OldIrql);

    if( !NT_SUCCESS(Status) )
        return Status;

    TI_DbgPrint(MID_TRACE,("About to send datagram\n"));

    Status = IPSendDatagram(&Packet, NCE);
    if (!NT_SUCCESS(Status))
        return Status;

    *DataUsed = DataSize;

    TI_DbgPrint(MID_TRACE,("Leaving\n"));

    return STATUS_SUCCESS;
}
