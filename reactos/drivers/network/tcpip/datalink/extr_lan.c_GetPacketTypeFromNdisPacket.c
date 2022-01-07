
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {int HeaderSize; } ;
typedef int PVOID ;
typedef int PULONG ;
typedef int PNDIS_PACKET ;
typedef TYPE_1__* PLAN_ADAPTER ;
typedef int NDIS_STATUS ;


 int CopyPacketToBuffer (int ,int ,int ,int ) ;
 int DEBUG_DATALINK ;
 int ExAllocatePoolWithTag (int ,int ,int ) ;
 int ExFreePoolWithTag (int ,int ) ;
 int GetPacketTypeFromHeaderBuffer (TYPE_1__*,int ,int ,int ) ;
 int HEADER_TAG ;
 int NDIS_STATUS_NOT_ACCEPTED ;
 int NDIS_STATUS_RESOURCES ;
 int NonPagedPool ;
 int TI_DbgPrint (int ,char*) ;

NDIS_STATUS
GetPacketTypeFromNdisPacket(PLAN_ADAPTER Adapter,
                            PNDIS_PACKET NdisPacket,
                            PULONG PacketType)
{
    PVOID HeaderBuffer;
    ULONG BytesCopied;
    NDIS_STATUS Status;

    HeaderBuffer = ExAllocatePoolWithTag(NonPagedPool,
                                         Adapter->HeaderSize,
                                         HEADER_TAG);
    if (!HeaderBuffer)
        return NDIS_STATUS_RESOURCES;


    BytesCopied = CopyPacketToBuffer(HeaderBuffer,
                                     NdisPacket,
                                     0,
                                     Adapter->HeaderSize);
    if (BytesCopied != Adapter->HeaderSize)
    {

        ExFreePoolWithTag(HeaderBuffer, HEADER_TAG);
        TI_DbgPrint(DEBUG_DATALINK, ("Runt frame (size %d).\n", BytesCopied));
        return NDIS_STATUS_NOT_ACCEPTED;
    }

    Status = GetPacketTypeFromHeaderBuffer(Adapter,
                                           HeaderBuffer,
                                           BytesCopied,
                                           PacketType);

    ExFreePoolWithTag(HeaderBuffer, HEADER_TAG);

    return Status;
}
