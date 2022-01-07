
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int USHORT ;
typedef int UCHAR ;
struct TYPE_13__ {int IPv4Address; } ;
struct TYPE_16__ {int Type; TYPE_1__ Address; } ;
struct TYPE_15__ {int Context; int (* Transmit ) (int ,TYPE_2__*,int ,int *,int ) ;TYPE_4__ Unicast; int Address; scalar_t__ AddressLength; } ;
struct TYPE_14__ {int DLComplete; } ;
typedef int PVOID ;
typedef TYPE_2__* PNDIS_PACKET ;
typedef TYPE_3__* PIP_INTERFACE ;
typedef TYPE_4__* PIP_ADDRESS ;
typedef int BOOLEAN ;


 int ARPTransmitComplete ;
 int ARP_OPCODE_REQUEST ;
 int ASSERT_KM_POINTER (TYPE_2__*) ;
 int DEBUG_ARP ;
 int DbgBreakPoint () ;
 int ETYPE_IPv4 ;
 int ETYPE_IPv6 ;
 int FALSE ;


 int LAN_PROTO_ARP ;
 TYPE_2__* PC (TYPE_2__*) ;
 TYPE_2__* PrepareARPPacket (TYPE_3__*,int ,int ,int,int,int ,int *,int ,int *,int ) ;
 int TI_DbgPrint (int ,char*) ;
 int TRUE ;
 int WN2H (int) ;
 int stub1 (int ,TYPE_2__*,int ,int *,int ) ;

BOOLEAN ARPTransmit(PIP_ADDRESS Address, PVOID LinkAddress,
                    PIP_INTERFACE Interface)







{
    PNDIS_PACKET NdisPacket;
    UCHAR ProtoAddrLen;
    USHORT ProtoType;

    TI_DbgPrint(DEBUG_ARP, ("Called.\n"));



    if (!Address)
        Address = &Interface->Unicast;

    switch (Address->Type) {
        case 129:
            ProtoType = (USHORT)ETYPE_IPv4;
            ProtoAddrLen = 4;
            break;
        case 128:
            ProtoType = (USHORT)ETYPE_IPv6;
            ProtoAddrLen = 16;
            break;
        default:
     TI_DbgPrint(DEBUG_ARP,("Bad Address Type %x\n", Address->Type));
     DbgBreakPoint();

            return FALSE;
    }

    NdisPacket = PrepareARPPacket(
        Interface,
        WN2H(0x0001),
        ProtoType,
        (UCHAR)Interface->AddressLength,
        (UCHAR)ProtoAddrLen,
        Interface->Address,
        &Interface->Unicast.Address.IPv4Address,
        LinkAddress,
        &Address->Address.IPv4Address,
        ARP_OPCODE_REQUEST);

    if( !NdisPacket ) return FALSE;

    ASSERT_KM_POINTER(NdisPacket);
    ASSERT_KM_POINTER(PC(NdisPacket));
    PC(NdisPacket)->DLComplete = ARPTransmitComplete;

    TI_DbgPrint(DEBUG_ARP,("Sending ARP Packet\n"));

    (*Interface->Transmit)(Interface->Context, NdisPacket,
        0, ((void*)0), LAN_PROTO_ARP);

    return TRUE;
}
