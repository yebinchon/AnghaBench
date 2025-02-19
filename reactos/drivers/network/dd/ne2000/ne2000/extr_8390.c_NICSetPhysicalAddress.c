
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
struct TYPE_3__ {int* StationAddress; scalar_t__ IOBase; } ;
typedef TYPE_1__* PNIC_ADAPTER ;


 int CR_PAGE0 ;
 int CR_PAGE1 ;
 int CR_RD2 ;
 int CR_STP ;
 int NdisRawWritePortUchar (scalar_t__,int) ;
 scalar_t__ PG0_CR ;
 scalar_t__ PG1_PAR ;

__attribute__((used)) static VOID NICSetPhysicalAddress(
    PNIC_ADAPTER Adapter)
{
    UINT i;


    NdisRawWritePortUchar(Adapter->IOBase + PG0_CR, CR_STP | CR_RD2 | CR_PAGE1);


    for (i = 0; i < 0x06; i++)
        NdisRawWritePortUchar(Adapter->IOBase + PG1_PAR + i, Adapter->StationAddress[i]);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_CR, CR_STP | CR_RD2 | CR_PAGE0);
}
