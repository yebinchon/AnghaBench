
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int BufferPoolHandle; } ;
typedef int PVOID ;
typedef int PNDIS_PACKET ;
typedef int PNDIS_BUFFER ;
typedef TYPE_1__* PNDISUIO_ADAPTER_CONTEXT ;
typedef scalar_t__ NDIS_STATUS ;
typedef scalar_t__ BOOLEAN ;


 int DPRINT1 (char*) ;
 scalar_t__ NDIS_STATUS_SUCCESS ;
 int NdisAllocateBuffer (scalar_t__*,int *,int ,int ,int ) ;
 int NdisChainBufferAtBack (int ,int ) ;
 int NdisChainBufferAtFront (int ,int ) ;

NDIS_STATUS
AllocateAndChainBuffer(PNDISUIO_ADAPTER_CONTEXT AdapterContext,
                       PNDIS_PACKET Packet,
                       PVOID Buffer,
                       ULONG BufferSize,
                       BOOLEAN Front)
{
    NDIS_STATUS Status;
    PNDIS_BUFFER NdisBuffer;


    NdisAllocateBuffer(&Status,
                       &NdisBuffer,
                       AdapterContext->BufferPoolHandle,
                       Buffer,
                       BufferSize);
    if (Status != NDIS_STATUS_SUCCESS)
    {
        DPRINT1("No free buffer descriptors\n");
        return Status;
    }

    if (Front)
    {

        NdisChainBufferAtFront(Packet, NdisBuffer);
    }
    else
    {

        NdisChainBufferAtBack(Packet, NdisBuffer);
    }


    return NDIS_STATUS_SUCCESS;
}
