
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
struct TYPE_5__ {int* TXSize; size_t TXCurrent; int TXFree; int TXCount; scalar_t__ TXQueueTail; scalar_t__ TransmitError; } ;
typedef TYPE_1__* PNIC_ADAPTER ;


 int DRIVER_BLOCK_SIZE ;
 scalar_t__ FALSE ;
 int MID_TRACE ;
 int NDIS_DbgPrint (int ,char*) ;
 scalar_t__ NICPrepareForTransmit (TYPE_1__*) ;
 int NICStartTransmit (TYPE_1__*) ;

__attribute__((used)) static VOID HandleTransmit(
    PNIC_ADAPTER Adapter)





{
    UINT Length;
    UINT BufferCount;





    if (Adapter->TransmitError) {

        Adapter->TransmitError = FALSE;
    }


    Length = Adapter->TXSize[Adapter->TXCurrent];
    BufferCount = (Length + DRIVER_BLOCK_SIZE - 1) / DRIVER_BLOCK_SIZE;

    NDIS_DbgPrint(MID_TRACE, ("Freeing (%d) buffers at (%d).\n",
        BufferCount,
        Adapter->TXCurrent));

    Adapter->TXFree += BufferCount;
    Adapter->TXSize[Adapter->TXCurrent] = 0;
    Adapter->TXCurrent = (Adapter->TXCurrent + BufferCount) % Adapter->TXCount;

    if (Adapter->TXSize[Adapter->TXCurrent] == 0) {
        NDIS_DbgPrint(MID_TRACE, ("No more packets in transmit buffer.\n"));

        Adapter->TXCurrent = -1;
    }

    if (Adapter->TXQueueTail) {
        if (NICPrepareForTransmit(Adapter))
            NICStartTransmit(Adapter);
    }
}
