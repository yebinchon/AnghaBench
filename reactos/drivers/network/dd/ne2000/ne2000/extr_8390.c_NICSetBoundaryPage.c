
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef int UCHAR ;
struct TYPE_3__ {int NextPacket; int PageStart; int PageStop; scalar_t__ IOBase; } ;
typedef TYPE_1__* PNIC_ADAPTER ;


 int NdisRawWritePortUchar (scalar_t__,int ) ;
 scalar_t__ PG0_BNRY ;

__attribute__((used)) static VOID NICSetBoundaryPage(
    PNIC_ADAPTER Adapter)





{
    if (Adapter->NextPacket == Adapter->PageStart) {
        NdisRawWritePortUchar(Adapter->IOBase + PG0_BNRY,
            (UCHAR)(Adapter->PageStop - 1));
    } else {
        NdisRawWritePortUchar(Adapter->IOBase + PG0_BNRY,
            (UCHAR)(Adapter->NextPacket - 1));
    }
}
