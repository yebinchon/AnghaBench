
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef int UCHAR ;
struct TYPE_3__ {int CurrentPage; scalar_t__ IOBase; } ;
typedef TYPE_1__* PNIC_ADAPTER ;


 int CR_PAGE0 ;
 int CR_PAGE1 ;
 int CR_RD2 ;
 int CR_STA ;
 int NdisRawReadPortUchar (scalar_t__,int *) ;
 int NdisRawWritePortUchar (scalar_t__,int) ;
 scalar_t__ PG0_CR ;
 scalar_t__ PG1_CURR ;

__attribute__((used)) static VOID NICGetCurrentPage(
    PNIC_ADAPTER Adapter)





{
    UCHAR Current;


    NdisRawWritePortUchar(Adapter->IOBase + PG0_CR, CR_STA | CR_RD2 | CR_PAGE1);


    NdisRawReadPortUchar(Adapter->IOBase + PG1_CURR, &Current);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_CR, CR_STA | CR_RD2 | CR_PAGE0);

    Adapter->CurrentPage = Current;
}
