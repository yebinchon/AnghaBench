
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;


 scalar_t__ IsAddressValid (scalar_t__) ;
 scalar_t__ PICE_toupper (char) ;

ULONG PICE_strncmpi(char* s1,char* s2,ULONG len)
{
ULONG result=1;

    while(len &&
    IsAddressValid((ULONG)s1) && *s1 &&
          IsAddressValid((ULONG)s2) && *s2 &&
          PICE_toupper(*s1)==PICE_toupper(*s2) )
    {
        s1++;
        s2++;
  len--;
    }

    if(len==0)
        result=0;

    return result;
}
