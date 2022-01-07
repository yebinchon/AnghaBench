
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef char* LPSTR ;
typedef int LONG ;


 int DPRINT (int) ;
 int IsAddressValid (int) ;
 scalar_t__ PICE_isdigit (char) ;

LONG ExtractNumber(LPSTR p)
{
    LONG lMinus = 1,lBase;
    ULONG lNumber = 0;

    DPRINT((0,"ExtractNumber(): %s\n",p));

    if(!IsAddressValid((ULONG)p) )
    {
        DPRINT((1,"ExtractNumber(): [1] invalid page %x hit!\n",p));
        return 0;
    }

    if(*p == '-')
    {
        lMinus = -1;
        p++;
    }

    if(!IsAddressValid((ULONG)p) )
    {
        DPRINT((1,"ExtractNumber(): [2] invalid page %x hit!\n",p));
        return 0;
    }

    if(*p != '0')
        lBase = 10;
    else
        lBase = 8;

    if(!IsAddressValid((ULONG)p) )
    {
        DPRINT((1,"ExtractNumber(): [3] invalid page %x hit!\n",p));
        return 0;
    }

    while(PICE_isdigit(*p))
    {
        lNumber *= lBase;
        lNumber += *p-'0';
        p++;
        if(!IsAddressValid((ULONG)p) )
        {
            DPRINT((1,"ExtractNumber(): [4] invalid page %x hit!\n",p));
            return 0;
        }
    }

    return (lNumber*lMinus);
}
