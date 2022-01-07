
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_3__ {scalar_t__ IOBase; } ;
typedef TYPE_1__* PNIC_ADAPTER ;
typedef int NDIS_STATUS ;


 int CR_PAGE0 ;
 int CR_RD2 ;
 int CR_STA ;
 int CR_STP ;
 int ISR_RST ;
 int MAX_TRACE ;
 int MIN_TRACE ;
 int NDIS_DbgPrint (int ,char*) ;
 int NDIS_STATUS_SUCCESS ;
 int NdisRawReadPortUchar (scalar_t__,int*) ;
 int NdisRawWritePortUchar (scalar_t__,int) ;
 int NdisStallExecution (int) ;
 scalar_t__ PG0_CR ;
 scalar_t__ PG0_ISR ;
 scalar_t__ PG0_RBCR0 ;
 scalar_t__ PG0_RCR ;
 scalar_t__ PG0_TCR ;
 int RCR_MON ;
 int TCR_LOOP ;

NDIS_STATUS NICStop(
    PNIC_ADAPTER Adapter)







{
    UCHAR Tmp;
    UINT i;

    NDIS_DbgPrint(MAX_TRACE, ("Called.\n"));


    NdisRawWritePortUchar(Adapter->IOBase + PG0_CR, CR_STP | CR_RD2 | CR_PAGE0);


    NdisRawWritePortUchar( Adapter->IOBase + PG0_RBCR0, 0x00);
    NdisRawWritePortUchar( Adapter->IOBase + PG0_RBCR0, 0x00);


    for (i = 0; i < 4; i++) {
        NdisRawReadPortUchar(Adapter->IOBase + PG0_ISR, &Tmp);
        if (Tmp & ISR_RST)
            break;

        NdisStallExecution(500);
    }







    NdisRawWritePortUchar(Adapter->IOBase + PG0_RCR, RCR_MON);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_TCR, TCR_LOOP);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_CR, CR_STA | CR_RD2);

    return NDIS_STATUS_SUCCESS;
}
