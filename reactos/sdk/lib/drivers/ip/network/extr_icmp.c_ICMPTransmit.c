
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ USHORT ;
struct TYPE_8__ {int IPv4Address; } ;
struct TYPE_11__ {TYPE_1__ Address; } ;
struct TYPE_10__ {scalar_t__ Checksum; } ;
struct TYPE_9__ {int (* Free ) (TYPE_2__*) ;TYPE_5__ DstAddr; scalar_t__ HeaderSize; scalar_t__ TotalSize; scalar_t__ Data; } ;
typedef int PVOID ;
typedef int PNEIGHBOR_CACHE_ENTRY ;
typedef int PIP_TRANSMIT_COMPLETE ;
typedef TYPE_2__* PIP_PACKET ;
typedef TYPE_3__* PICMP_HEADER ;


 int DEBUG_ICMP ;
 int IPSendDatagram (TYPE_2__*,int ) ;
 scalar_t__ IPv4Checksum (scalar_t__,scalar_t__,int ) ;
 int RouteGetRouteToDestination (TYPE_5__*) ;
 int TI_DbgPrint (int ,char*) ;
 int stub1 (TYPE_2__*) ;

VOID ICMPTransmit(
    PIP_PACKET IPPacket,
    PIP_TRANSMIT_COMPLETE Complete,
    PVOID Context)






{
    PNEIGHBOR_CACHE_ENTRY NCE;

    TI_DbgPrint(DEBUG_ICMP, ("Called.\n"));


    ((PICMP_HEADER)IPPacket->Data)->Checksum = (USHORT)
        IPv4Checksum(IPPacket->Data, IPPacket->TotalSize - IPPacket->HeaderSize, 0);


    if ((NCE = RouteGetRouteToDestination(&IPPacket->DstAddr))) {

        IPSendDatagram(IPPacket, NCE);
    } else {

        TI_DbgPrint(DEBUG_ICMP, ("No route to destination address 0x%X.\n",
                                 IPPacket->DstAddr.Address.IPv4Address));
        IPPacket->Free(IPPacket);
    }
}
