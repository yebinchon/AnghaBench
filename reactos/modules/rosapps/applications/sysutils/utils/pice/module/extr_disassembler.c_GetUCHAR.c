
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int UCHAR ;
typedef int* PUCHAR ;


 scalar_t__ IsAddressValid (scalar_t__) ;

UCHAR GetUCHAR(ULONG addr)
{
    if(IsAddressValid(addr))
        return *(PUCHAR)addr;
    else
        return 0x82;
}
