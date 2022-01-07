
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {int TXCurrent; } ;
typedef TYPE_1__* PNIC_ADAPTER ;


 int MAX_TRACE ;
 int NDIS_DbgPrint (int ,char*) ;
 scalar_t__ NICPrepareForTransmit (TYPE_1__*) ;
 int NICStartTransmit (TYPE_1__*) ;

VOID NICTransmit(
    PNIC_ADAPTER Adapter)







{
    NDIS_DbgPrint(MAX_TRACE, ("Called.\n"));

    if (Adapter->TXCurrent == -1) {



        if (NICPrepareForTransmit(Adapter))
            NICStartTransmit(Adapter);
    }
}
