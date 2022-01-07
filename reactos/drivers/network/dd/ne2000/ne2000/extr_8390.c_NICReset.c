
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_5__ {scalar_t__ IOBase; } ;
typedef TYPE_1__* PNIC_ADAPTER ;
typedef int NDIS_STATUS ;


 int MAX_TRACE ;
 int NDIS_DbgPrint (int ,char*) ;
 int NDIS_STATUS_SUCCESS ;
 int NICStart (TYPE_1__*) ;
 int NICStop (TYPE_1__*) ;
 scalar_t__ NIC_RESET ;
 int NdisRawReadPortUchar (scalar_t__,int *) ;
 int NdisRawWritePortUchar (scalar_t__,int ) ;
 int NdisStallExecution (int) ;

NDIS_STATUS NICReset(
    PNIC_ADAPTER Adapter)







{
    UCHAR Tmp;

    NDIS_DbgPrint(MAX_TRACE, ("Called.\n"));


    NICStop(Adapter);


    NdisRawReadPortUchar(Adapter->IOBase + NIC_RESET, &Tmp);


    NdisStallExecution(1600);


    NdisRawWritePortUchar(Adapter->IOBase + NIC_RESET, Tmp);


    NICStart(Adapter);

    return NDIS_STATUS_SUCCESS;
}
