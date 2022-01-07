
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int USHORT ;
typedef int ULONG_PTR ;
typedef scalar_t__ UCHAR ;
typedef int* PUSHORT ;
typedef scalar_t__* PUCHAR ;
typedef int PNIC_ADAPTER ;


 int NICReadDataAlign (int ,int*,int,int) ;

VOID NICReadData(
    PNIC_ADAPTER Adapter,
    PUCHAR Target,
    ULONG_PTR Source,
    USHORT Length)
{
    USHORT Tmp;


    if (Source & 0x01) {

        NICReadDataAlign(Adapter, &Tmp, Source - 1, 0x02);
        *Target = (UCHAR)(Tmp >> 8);
        Source++;
        Target++;
        Length--;
    }

    if (Length & 0x01) {

        Tmp = Length & 0xFFFE;
        NICReadDataAlign(Adapter, (PUSHORT)Target, Source, Tmp);
        Source += Tmp;
        Target = (PUCHAR)((ULONG_PTR) Target + Tmp);


        NICReadDataAlign(Adapter, &Tmp, Source, 0x02);
        *Target = (UCHAR)(Tmp & 0x00FF);
    } else

        NICReadDataAlign(Adapter, (PUSHORT)Target, Source, Length);
}
