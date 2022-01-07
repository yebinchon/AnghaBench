
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ UCHAR ;
struct TYPE_3__ {int MissedPackets; scalar_t__ IOBase; int CrcErrors; int FrameAlignmentErrors; } ;
typedef TYPE_1__* PNIC_ADAPTER ;


 int MAX_TRACE ;
 int NDIS_DbgPrint (int ,char*) ;
 int NdisRawReadPortUchar (scalar_t__,scalar_t__*) ;
 scalar_t__ PG0_CNTR0 ;
 scalar_t__ PG0_CNTR1 ;
 scalar_t__ PG0_CNTR2 ;

VOID NICUpdateCounters(
    PNIC_ADAPTER Adapter)





{
    UCHAR Tmp;

    NDIS_DbgPrint(MAX_TRACE, ("Called.\n"));

    NdisRawReadPortUchar(Adapter->IOBase + PG0_CNTR0, &Tmp);
    Adapter->FrameAlignmentErrors += Tmp;

    NdisRawReadPortUchar(Adapter->IOBase + PG0_CNTR1, &Tmp);
    Adapter->CrcErrors += Tmp;

    NdisRawReadPortUchar(Adapter->IOBase + PG0_CNTR2, &Tmp);
    Adapter->MissedPackets += Tmp;
}
