
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int DPRINT (int ) ;
 scalar_t__ IsAddressValid (int ) ;

char* PICE_strchr(char* s,char c)
{
    while(IsAddressValid((ULONG)s) && *s)
    {
        if(*s == c)
            return s;
        s++;
    }
    return ((void*)0);
}
