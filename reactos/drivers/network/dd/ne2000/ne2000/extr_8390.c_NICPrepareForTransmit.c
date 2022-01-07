
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int * Next; } ;
struct TYPE_5__ {int TXFree; int TXCurrent; int TXNext; int TXCount; int MiniportAdapterHandle; int * TXQueueTail; int * TXQueueHead; } ;
typedef TYPE_1__* PNIC_ADAPTER ;
typedef int * PNDIS_PACKET ;
typedef int BOOLEAN ;


 int DRIVER_BLOCK_SIZE ;
 int FALSE ;
 int MAX_TRACE ;
 int MID_TRACE ;
 int NDIS_DbgPrint (int ,char*) ;
 int NDIS_STATUS_SUCCESS ;
 int NICWritePacket (TYPE_1__*) ;
 int NdisMSendComplete (int ,int *,int ) ;
 int NdisQueryPacket (int *,int *,int *,int *,int*) ;
 TYPE_2__* RESERVED (int *) ;
 int TRUE ;

__attribute__((used)) static BOOLEAN NICPrepareForTransmit(
    PNIC_ADAPTER Adapter)
{
    UINT Length;
    UINT BufferCount;
    PNDIS_PACKET Packet;

    NDIS_DbgPrint(MAX_TRACE, ("Called.\n"));


    NdisQueryPacket(Adapter->TXQueueHead,
                    ((void*)0),
                    ((void*)0),
                    ((void*)0),
                    &Length);

    BufferCount = (Length + DRIVER_BLOCK_SIZE - 1) / DRIVER_BLOCK_SIZE;

    if (BufferCount > Adapter->TXFree) {
        NDIS_DbgPrint(MID_TRACE, ("No transmit resources. Have (%d) buffers, need (%d).\n",
            Adapter->TXFree, BufferCount));

        return FALSE;
    }


    NICWritePacket(Adapter);


    if (Adapter->TXCurrent == -1)
        Adapter->TXCurrent = Adapter->TXNext;

    Adapter->TXNext = (Adapter->TXNext + BufferCount) % Adapter->TXCount;
    Adapter->TXFree -= BufferCount;


    Packet = Adapter->TXQueueHead;
    Adapter->TXQueueHead = RESERVED(Packet)->Next;

    if (Packet == Adapter->TXQueueTail)
        Adapter->TXQueueTail = ((void*)0);


    NdisMSendComplete(Adapter->MiniportAdapterHandle,
                      Packet,
                      NDIS_STATUS_SUCCESS);

    return TRUE;
}
