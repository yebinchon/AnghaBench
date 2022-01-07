
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t USHORT ;
typedef int ULONG ;


 scalar_t__ IsAddressValid (int ) ;
 size_t _PAGE_SIZE ;

USHORT PICE_strlen(const char* s)
{
 USHORT i;

 for(i=0;IsAddressValid((ULONG)&s[i]) && s[i]!=0 && i<_PAGE_SIZE;i++);

    if(IsAddressValid((ULONG)&s[i]) && s[i]==0)
        return i;

    return 0;
}
