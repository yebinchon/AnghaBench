
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int ULONG ;
typedef int PNIC_ADAPTER ;
typedef int BOOLEAN ;


 int NICReadDataAlign (int ,int*,int ,int) ;
 int NICWriteDataAlign (int ,int ,int*,int) ;

__attribute__((used)) static BOOLEAN NICTestAddress(
    PNIC_ADAPTER Adapter,
    ULONG Address)







{
    USHORT Data;
    USHORT Tmp;


    NICReadDataAlign(Adapter, &Data, Address, 0x02);


    Data ^= 0xFFFF;


    NICWriteDataAlign(Adapter, Address, &Data, 0x02);


    NICReadDataAlign(Adapter, &Tmp, Address, 0x02);

    return (Data == Tmp);
}
