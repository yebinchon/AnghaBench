
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {int PacketPoolHandle; } ;
typedef int PVOID ;
typedef int * PNDIS_PACKET ;
typedef TYPE_1__* PNDISUIO_ADAPTER_CONTEXT ;
typedef scalar_t__ NDIS_STATUS ;


 scalar_t__ AllocateAndChainBuffer (TYPE_1__*,int *,int ,int ,int ) ;
 int DPRINT1 (char*) ;
 scalar_t__ NDIS_STATUS_SUCCESS ;
 int NdisAllocatePacket (scalar_t__*,int **,int ) ;
 int NdisFreePacket (int *) ;
 int TRUE ;

PNDIS_PACKET
CreatePacketFromPoolBuffer(PNDISUIO_ADAPTER_CONTEXT AdapterContext,
                           PVOID Buffer,
                           ULONG BufferSize)
{
    PNDIS_PACKET Packet;
    NDIS_STATUS Status;


    NdisAllocatePacket(&Status,
                       &Packet,
                       AdapterContext->PacketPoolHandle);
    if (Status != NDIS_STATUS_SUCCESS)
    {
        DPRINT1("No free packet descriptors\n");
        return ((void*)0);
    }


    Status = AllocateAndChainBuffer(AdapterContext, Packet,
                                    Buffer, BufferSize, TRUE);
    if (Status != NDIS_STATUS_SUCCESS)
    {
        NdisFreePacket(Packet);
        return ((void*)0);
    }


    return Packet;
}
