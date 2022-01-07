
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG_PTR ;
typedef int ULONG ;
typedef int UINT ;
struct TYPE_4__ {int TXStart; int TXCount; size_t TXNext; int * TXSize; int TXQueueHead; } ;
typedef int PVOID ;
typedef scalar_t__ PUCHAR ;
typedef TYPE_1__* PNIC_ADAPTER ;
typedef int PNDIS_BUFFER ;


 int DRIVER_BLOCK_SIZE ;
 int MAX_TRACE ;
 int MID_TRACE ;
 int NDIS_DbgPrint (int ,char*) ;
 int NICWriteData (TYPE_1__*,int,scalar_t__,int) ;
 int NdisGetNextBuffer (int ,int *) ;
 int NdisQueryBuffer (int ,int ,int*) ;
 int NdisQueryPacket (int ,int *,int *,int *,int *) ;

__attribute__((used)) static VOID NICWritePacket(
    PNIC_ADAPTER Adapter)
{
    PNDIS_BUFFER SrcBuffer;
    UINT BytesToCopy, SrcSize, DstSize;
    PUCHAR SrcData;
    ULONG DstData;
    UINT TXStart;
    UINT TXStop;

    NDIS_DbgPrint(MAX_TRACE, ("Called.\n"));

    TXStart = Adapter->TXStart * DRIVER_BLOCK_SIZE;
    TXStop = (Adapter->TXStart + Adapter->TXCount) * DRIVER_BLOCK_SIZE;

    NdisQueryPacket(Adapter->TXQueueHead,
                    ((void*)0),
                    ((void*)0),
                    &SrcBuffer,
                    &Adapter->TXSize[Adapter->TXNext]);

    NDIS_DbgPrint(MID_TRACE, ("Packet (%d) is now size (%d).\n",
        Adapter->TXNext,
        Adapter->TXSize[Adapter->TXNext]));

    NdisQueryBuffer(SrcBuffer, (PVOID)&SrcData, &SrcSize);

    DstData = TXStart + Adapter->TXNext * DRIVER_BLOCK_SIZE;
    DstSize = TXStop - DstData;


    for (;;) {
        BytesToCopy = (SrcSize < DstSize)? SrcSize : DstSize;

        NICWriteData(Adapter, DstData, SrcData, BytesToCopy);

        SrcData = (PUCHAR)((ULONG_PTR) SrcData + BytesToCopy);
        SrcSize -= BytesToCopy;
        DstData += BytesToCopy;
        DstSize -= BytesToCopy;

        if (SrcSize == 0) {


            NdisGetNextBuffer(SrcBuffer, &SrcBuffer);
            if (!SrcBuffer)
                break;

            NdisQueryBuffer(SrcBuffer, (PVOID)&SrcData, &SrcSize);
        }

        if (DstSize == 0) {

            DstData = TXStart;
            DstSize = Adapter->TXCount * DRIVER_BLOCK_SIZE;
        }
    }
}
