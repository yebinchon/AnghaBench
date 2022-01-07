
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ IOBase; } ;
typedef TYPE_1__* PNIC_ADAPTER ;
typedef int NDIS_STATUS ;


 int MAX_TRACE ;
 int NDIS_DbgPrint (int ,char*) ;
 int NDIS_STATUS_SUCCESS ;
 int NdisRawWritePortUchar (scalar_t__,int) ;
 scalar_t__ PG0_RCR ;
 scalar_t__ PG0_TCR ;
 int RCR_AB ;
 int RCR_AM ;
 int RCR_PRO ;

NDIS_STATUS NICStart(
    PNIC_ADAPTER Adapter)







{
    NDIS_DbgPrint(MAX_TRACE, ("Called.\n"));


    NdisRawWritePortUchar(Adapter->IOBase + PG0_TCR, 0x00);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_RCR, RCR_AB | RCR_AM | RCR_PRO);

    return NDIS_STATUS_SUCCESS;
}
