
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int USHORT ;
typedef int ULONG_PTR ;
typedef int* PUSHORT ;
typedef int* PUCHAR ;
typedef int PNIC_ADAPTER ;


 int NICReadDataAlign (int ,int*,int,int) ;
 int NICWriteDataAlign (int ,int,int*,int) ;

VOID NICWriteData(
    PNIC_ADAPTER Adapter,
    ULONG_PTR Target,
    PUCHAR Source,
    USHORT Length)
{
    USHORT Tmp;


    if (Target & 0x01) {

        NICReadDataAlign(Adapter, &Tmp, Target - 1, 0x02);


        Tmp = (Tmp & 0x00FF) | (*Source << 8);


        NICWriteDataAlign(Adapter, Target - 1, &Tmp, 0x02);


        Source = (PUCHAR) ((ULONG_PTR) Source + 1);
        Target += 1;
        Length--;
    }

    if (Length & 0x01) {

        Tmp = Length & 0xFFFE;
        NICWriteDataAlign(Adapter, Target, (PUSHORT)Source, Tmp);
        Source += Tmp;
        Target += Tmp;


        NICReadDataAlign(Adapter, &Tmp, Target, 0x02);


        Tmp = (Tmp & 0xFF00) | (*Source);


        NICWriteDataAlign(Adapter, Target, &Tmp, 0x02);
    } else

        NICWriteDataAlign(Adapter, Target, (PUSHORT)Source, Length);
}
