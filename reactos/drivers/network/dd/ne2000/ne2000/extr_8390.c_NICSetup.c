
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int NextPacket; int PageStart; int PageStop; int InterruptMask; int CurrentPage; void* TransmitError; void* ReceiveError; void* BufferOverflow; scalar_t__ IOBase; scalar_t__ WordMode; } ;
typedef TYPE_1__* PNIC_ADAPTER ;
typedef int NDIS_STATUS ;


 int CR_PAGE0 ;
 int CR_PAGE1 ;
 int CR_RD2 ;
 int CR_STA ;
 int CR_STP ;
 int DCR_FT10 ;
 int DCR_LS ;
 int DCR_WTS ;
 void* FALSE ;
 int MAX_TRACE ;
 int NDIS_DbgPrint (int ,char*) ;
 int NDIS_STATUS_SUCCESS ;
 int NICSetMulticastAddressMask (TYPE_1__*) ;
 int NICSetPhysicalAddress (TYPE_1__*) ;
 int NdisRawWritePortUchar (scalar_t__,int) ;
 scalar_t__ PG0_BNRY ;
 scalar_t__ PG0_CR ;
 scalar_t__ PG0_DCR ;
 scalar_t__ PG0_IMR ;
 scalar_t__ PG0_ISR ;
 scalar_t__ PG0_PSTART ;
 scalar_t__ PG0_PSTOP ;
 scalar_t__ PG0_RBCR0 ;
 scalar_t__ PG0_RBCR1 ;
 scalar_t__ PG0_RCR ;
 scalar_t__ PG0_TCR ;
 scalar_t__ PG1_CURR ;
 int RCR_MON ;
 int TCR_LOOP ;

NDIS_STATUS NICSetup(
    PNIC_ADAPTER Adapter)
{
    NDIS_DbgPrint(MAX_TRACE, ("Called.\n"));

    if (Adapter->WordMode ) {

        NdisRawWritePortUchar(Adapter->IOBase + PG0_DCR, DCR_WTS | DCR_LS | DCR_FT10);
    } else {

        NdisRawWritePortUchar(Adapter->IOBase + PG0_DCR, DCR_LS | DCR_FT10);
    }


    NdisRawWritePortUchar(Adapter->IOBase + PG0_RBCR0, 0x00);
    NdisRawWritePortUchar(Adapter->IOBase + PG0_RBCR1, 0x00);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_RCR, RCR_MON);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_TCR, TCR_LOOP);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_BNRY, Adapter->NextPacket);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_PSTART, Adapter->PageStart);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_PSTOP, Adapter->PageStop);


    NICSetPhysicalAddress(Adapter);


    NICSetMulticastAddressMask(Adapter);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_CR, CR_STP | CR_RD2 | CR_PAGE1);


    NdisRawWritePortUchar(Adapter->IOBase + PG1_CURR, Adapter->PageStart + 1);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_CR, CR_STP | CR_RD2 | CR_PAGE0);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_ISR, 0xFF);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_IMR, Adapter->InterruptMask);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_CR, CR_STA | CR_RD2 | CR_PAGE0);

    Adapter->CurrentPage = Adapter->PageStart + 1;
    Adapter->NextPacket = Adapter->PageStart + 1;
    Adapter->BufferOverflow = FALSE;
    Adapter->ReceiveError = FALSE;
    Adapter->TransmitError = FALSE;

    NDIS_DbgPrint(MAX_TRACE, ("Leaving.\n"));

    return NDIS_STATUS_SUCCESS;
}
