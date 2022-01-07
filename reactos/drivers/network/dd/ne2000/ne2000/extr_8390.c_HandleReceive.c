
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_8__ {int InterruptStatus; scalar_t__ NextPacket; scalar_t__ CurrentPage; int TXCurrent; int MiniportAdapterHandle; void* DoneIndicating; void* TransmitPending; void* ReceiveError; void* BufferOverflow; scalar_t__ IOBase; } ;
typedef TYPE_1__* PNIC_ADAPTER ;


 int CR_PAGE0 ;
 int CR_RD2 ;
 int CR_STA ;
 int CR_STP ;
 void* FALSE ;
 int ISR_PTX ;
 int ISR_RST ;
 int ISR_TXE ;
 int MAX_TRACE ;
 int MID_TRACE ;
 int MIN_TRACE ;
 int NDIS_DbgPrint (int ,char*) ;
 int NICGetCurrentPage (TYPE_1__*) ;
 int NICReadPacket (TYPE_1__*) ;
 int NICSetBoundaryPage (TYPE_1__*) ;
 int NICStart (TYPE_1__*) ;
 int NICStartTransmit (TYPE_1__*) ;
 int NdisMEthIndicateReceiveComplete (int ) ;
 int NdisRawReadPortUchar (scalar_t__,int*) ;
 int NdisRawWritePortUchar (scalar_t__,int) ;
 int NdisStallExecution (int) ;
 scalar_t__ PG0_CR ;
 scalar_t__ PG0_ISR ;
 scalar_t__ PG0_RBCR0 ;
 scalar_t__ PG0_RBCR1 ;
 scalar_t__ PG0_TCR ;
 int TCR_LOOP ;
 void* TRUE ;

__attribute__((used)) static VOID HandleReceive(
    PNIC_ADAPTER Adapter)







{
    UINT i;
    UCHAR Tmp;
    UINT PacketCount;

    NDIS_DbgPrint(MAX_TRACE, ("Called.\n"));

    Adapter->DoneIndicating = FALSE;
    PacketCount = 0;

    NICGetCurrentPage(Adapter);

    if (Adapter->BufferOverflow) {

        NDIS_DbgPrint(MID_TRACE, ("Receive ring overflow.\n"));


        NdisRawWritePortUchar(Adapter->IOBase + PG0_CR, CR_STP | CR_RD2 | CR_PAGE0);


        NdisRawWritePortUchar(Adapter->IOBase + PG0_RBCR0, 0x00);
        NdisRawWritePortUchar(Adapter->IOBase + PG0_RBCR1, 0x00);


        for (i = 0; i < 4; i++) {
            NdisRawReadPortUchar(Adapter->IOBase + PG0_ISR, &Tmp);
            if (Tmp & ISR_RST)
                break;

            NdisStallExecution(500);
        }






        if ((Adapter->InterruptStatus & (ISR_PTX | ISR_TXE)) == 0) {

            Adapter->TransmitPending = TRUE;
        }


        NdisRawWritePortUchar(Adapter->IOBase + PG0_TCR, TCR_LOOP);


        NdisRawWritePortUchar(Adapter->IOBase + PG0_CR, CR_STA | CR_RD2);

        NICStart(Adapter);

        Adapter->BufferOverflow = FALSE;
    }

    if (Adapter->ReceiveError) {
        NDIS_DbgPrint(MID_TRACE, ("Receive error.\n"));


        Adapter->NextPacket = Adapter->CurrentPage;
        NICSetBoundaryPage(Adapter);

        Adapter->ReceiveError = FALSE;
    }

    for (;;) {
        NICGetCurrentPage(Adapter);

        NDIS_DbgPrint(MID_TRACE, ("Current page (0x%X)  NextPacket (0x%X).\n",
            Adapter->CurrentPage,
            Adapter->NextPacket));

        if (Adapter->CurrentPage == Adapter->NextPacket) {
            NDIS_DbgPrint(MID_TRACE, ("No more packets.\n"));
            break;
        } else {
            NDIS_DbgPrint(MID_TRACE, ("Got a packet in the receive ring.\n"));

     NDIS_DbgPrint(MAX_TRACE,("Adapter->MiniportAdapterHandle: %x\n",
         Adapter->MiniportAdapterHandle));

            NICReadPacket(Adapter);

            Adapter->DoneIndicating = TRUE;

            PacketCount++;
            if (PacketCount == 10) {

                break;
            }
        }
    }

    if ((Adapter->TransmitPending) && (Adapter->TXCurrent != -1)) {
        NDIS_DbgPrint(MID_TRACE, ("Retransmitting current packet at (%d).\n", Adapter->TXCurrent));

        NICStartTransmit(Adapter);
        Adapter->TransmitPending = FALSE;
    }

    if (Adapter->DoneIndicating)
        NdisMEthIndicateReceiveComplete(Adapter->MiniportAdapterHandle);
}
