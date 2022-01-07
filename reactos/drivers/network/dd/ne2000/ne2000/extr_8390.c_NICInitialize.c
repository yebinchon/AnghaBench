
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_5__ {scalar_t__ IOBase; int * StationAddress; } ;
typedef TYPE_1__* PNIC_ADAPTER ;
typedef int NDIS_STATUS ;


 int CR_PAGE0 ;
 int CR_RD2 ;
 int CR_STA ;
 int CR_STP ;
 int DCR_FT10 ;
 int DCR_LS ;
 int MID_TRACE ;
 int NDIS_DbgPrint (int ,char*) ;
 int NDIS_STATUS_ADAPTER_NOT_FOUND ;
 int NDIS_STATUS_SUCCESS ;
 int NICReadSAPROM (TYPE_1__*) ;
 int NICTestRAM (TYPE_1__*) ;
 scalar_t__ NIC_RESET ;
 int NdisRawReadPortUchar (scalar_t__,int*) ;
 int NdisRawWritePortUchar (scalar_t__,int) ;
 int NdisStallExecution (int) ;
 scalar_t__ PG0_CR ;
 scalar_t__ PG0_DCR ;
 scalar_t__ PG0_ISR ;
 scalar_t__ PG0_RBCR0 ;
 scalar_t__ PG0_RBCR1 ;
 scalar_t__ PG0_RCR ;
 scalar_t__ PG0_TCR ;
 int RCR_MON ;
 int TCR_LOOP ;

NDIS_STATUS NICInitialize(
    PNIC_ADAPTER Adapter)
{
    UCHAR Tmp;

    NDIS_DbgPrint(MID_TRACE, ("Called.\n"));


    NdisRawReadPortUchar(Adapter->IOBase + NIC_RESET, &Tmp);


    NdisStallExecution(1600);


    NdisRawWritePortUchar(Adapter->IOBase + NIC_RESET, Tmp);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_CR, CR_STP | CR_RD2 | CR_PAGE0);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_DCR, DCR_LS | DCR_FT10);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_RBCR0, 0x00);
    NdisRawWritePortUchar(Adapter->IOBase + PG0_RBCR1, 0x00);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_RCR, RCR_MON);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_TCR, TCR_LOOP);


    if (!NICReadSAPROM(Adapter))
        return NDIS_STATUS_ADAPTER_NOT_FOUND;

    NDIS_DbgPrint(MID_TRACE, ("Station address is (%02X %02X %02X %02X %02X %02X).\n",
        Adapter->StationAddress[0], Adapter->StationAddress[1],
        Adapter->StationAddress[2], Adapter->StationAddress[3],
        Adapter->StationAddress[4], Adapter->StationAddress[5]));


    NdisRawWritePortUchar(Adapter->IOBase + PG0_CR, CR_STA | CR_RD2 | CR_PAGE0);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_ISR, 0xFF);


    NICTestRAM(Adapter);

    return NDIS_STATUS_SUCCESS;
}
