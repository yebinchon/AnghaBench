
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef int UCHAR ;
typedef int BOOLEAN ;


 int CR_RD2 ;
 int CR_STA ;
 int CR_STP ;
 int FALSE ;
 int MID_TRACE ;
 int NDIS_DbgPrint (int ,char*) ;
 int NdisRawReadPortUchar (scalar_t__,int*) ;
 int NdisRawWritePortUchar (scalar_t__,int) ;
 int NdisStallExecution (int) ;
 scalar_t__ PG0_CR ;
 scalar_t__ PG0_IMR ;
 int TRUE ;

__attribute__((used)) static BOOLEAN ProbeAddressForNIC(
    ULONG_PTR address)
{
    UCHAR Tmp;

    NDIS_DbgPrint(MID_TRACE, ("Probing address 0x%x\n", address));


    NdisRawWritePortUchar(address + PG0_IMR, 0);


    NdisRawWritePortUchar(address + PG0_CR, CR_STP | CR_RD2);


    NdisStallExecution(1600);


    NdisRawReadPortUchar(address + PG0_CR, &Tmp);

    if ((Tmp == (CR_RD2 | CR_STP)) || (Tmp == (CR_RD2 | CR_STP | CR_STA)))
        return TRUE;
    else
        return FALSE;
}
