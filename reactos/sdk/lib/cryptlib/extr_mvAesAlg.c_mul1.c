
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t MV_U8 ;


 size_t* Alogtable ;
 size_t* Logtable ;
 size_t* mask ;

MV_U8 mul1(MV_U8 aa, MV_U8 bb)
{
    return mask[bb] & Alogtable[aa + Logtable[bb]];
}
