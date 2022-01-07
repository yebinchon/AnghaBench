
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef int USHORT ;
typedef int ULONG_PTR ;
typedef int UCHAR ;
struct TYPE_3__ {scalar_t__ IOBase; scalar_t__ WordMode; } ;
typedef int PUSHORT ;
typedef TYPE_1__* PNIC_ADAPTER ;


 int CR_PAGE0 ;
 int CR_RD0 ;
 int CR_RD2 ;
 int CR_STA ;
 int ISR_RDC ;
 int MIN_TRACE ;
 int NDIS_DbgPrint (int ,char*) ;
 scalar_t__ NIC_DATA ;
 int NdisRawReadPortBufferUchar (scalar_t__,int ,int) ;
 int NdisRawReadPortBufferUshort (scalar_t__,int ,int) ;
 int NdisRawReadPortUchar (scalar_t__,int*) ;
 int NdisRawWritePortUchar (scalar_t__,int) ;
 int NdisStallExecution (int) ;
 scalar_t__ PG0_CR ;
 scalar_t__ PG0_ISR ;
 scalar_t__ PG0_RBCR0 ;
 scalar_t__ PG0_RBCR1 ;
 scalar_t__ PG0_RSAR0 ;
 scalar_t__ PG0_RSAR1 ;

VOID NICReadDataAlign(
    PNIC_ADAPTER Adapter,
    PUSHORT Target,
    ULONG_PTR Source,
    USHORT Length)
{
    UCHAR Tmp;
    USHORT Count;

    Count = Length;


    NdisRawWritePortUchar(Adapter->IOBase + PG0_CR, CR_STA | CR_RD2 | CR_PAGE0);


    NdisRawWritePortUchar(Adapter->IOBase + PG0_RSAR0, (UCHAR)(Source & 0xFF));
    NdisRawWritePortUchar(Adapter->IOBase + PG0_RSAR1, (UCHAR)(Source >> 8));


    NdisRawWritePortUchar(Adapter->IOBase + PG0_RBCR0, (UCHAR)(Count & 0xFF));
    NdisRawWritePortUchar(Adapter->IOBase + PG0_RBCR1, (UCHAR)(Count >> 8));


    NdisRawWritePortUchar(Adapter->IOBase + PG0_CR, CR_STA | CR_RD0 | CR_PAGE0);

    if (Adapter->WordMode)
        NdisRawReadPortBufferUshort(Adapter->IOBase + NIC_DATA, Target, Count >> 1);
    else
        NdisRawReadPortBufferUchar(Adapter->IOBase + NIC_DATA, Target, Count);


    for (Count = 0; Count < 0xFFFF; Count++) {
        NdisRawReadPortUchar(Adapter->IOBase + PG0_ISR, &Tmp);
        if (Tmp & ISR_RDC)
            break;

        NdisStallExecution(4);
    }







    NdisRawWritePortUchar(Adapter->IOBase + PG0_ISR, ISR_RDC);
}
