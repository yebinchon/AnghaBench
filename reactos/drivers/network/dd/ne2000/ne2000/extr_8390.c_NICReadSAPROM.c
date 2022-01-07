
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_3__ {void* WordMode; scalar_t__ IOBase; scalar_t__* SAPROM; int PermanentAddress; } ;
typedef int PVOID ;
typedef TYPE_1__* PNIC_ADAPTER ;
typedef void* BOOLEAN ;


 int CR_PAGE0 ;
 int CR_RD0 ;
 int CR_STA ;
 int DCR_FT10 ;
 int DCR_LS ;
 int DCR_WTS ;
 int DRIVER_LENGTH_OF_ADDRESS ;
 void* FALSE ;
 int MAX_TRACE ;
 int NDIS_DbgPrint (int ,char*) ;
 scalar_t__ NIC_DATA ;
 int NdisMoveMemory (int ,int ,int ) ;
 int NdisRawReadPortUchar (scalar_t__,scalar_t__*) ;
 int NdisRawWritePortUchar (scalar_t__,int) ;
 scalar_t__ PG0_CR ;
 scalar_t__ PG0_DCR ;
 scalar_t__ PG0_RBCR0 ;
 scalar_t__ PG0_RBCR1 ;
 scalar_t__ PG0_RSAR0 ;
 scalar_t__ PG0_RSAR1 ;
 void* TRUE ;

__attribute__((used)) static BOOLEAN NICReadSAPROM(
    PNIC_ADAPTER Adapter)
{
    UINT i;
    UCHAR Buffer[32];
    UCHAR WordLength;

    NDIS_DbgPrint(MAX_TRACE, ("Called.\n"));





    NdisRawWritePortUchar(Adapter->IOBase + PG0_RBCR0, 0x20);
    NdisRawWritePortUchar(Adapter->IOBase + PG0_RBCR1, 0x00);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_RSAR0, 0x00);
    NdisRawWritePortUchar(Adapter->IOBase + PG0_RSAR1, 0x00);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_CR, CR_STA | CR_RD0 | CR_PAGE0);


    WordLength = 2;
    for (i = 0; i < 32; i += 2) {
        NdisRawReadPortUchar(Adapter->IOBase + NIC_DATA, &Buffer[i]);
        NdisRawReadPortUchar(Adapter->IOBase + NIC_DATA, &Buffer[i + 1]);
  if (Buffer[i] != Buffer[i + 1])
   WordLength = 1;
 }


    if (WordLength == 2) {
        NDIS_DbgPrint(MAX_TRACE,("NE2000 or compatible network adapter found.\n"));

        Adapter->WordMode = TRUE;


        for (i = 0; i < 16; i++)
            Adapter->SAPROM[i] = Buffer[i * 2];


        NdisMoveMemory(
            (PVOID)&Adapter->PermanentAddress,
            (PVOID)&Adapter->SAPROM,
            DRIVER_LENGTH_OF_ADDRESS);


        NdisRawWritePortUchar(Adapter->IOBase + PG0_DCR, DCR_WTS | DCR_LS | DCR_FT10);

        return TRUE;
    } else {
        NDIS_DbgPrint(MAX_TRACE, ("NE1000 or compatible network adapter found.\n"));

        Adapter->WordMode = FALSE;

        return FALSE;
    }
}
