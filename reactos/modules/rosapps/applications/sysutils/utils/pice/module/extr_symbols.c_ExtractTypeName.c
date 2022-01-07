
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef char* LPSTR ;


 int DPRINT (int) ;
 scalar_t__ IsAddressValid (size_t) ;

LPSTR ExtractTypeName(LPSTR p)
{
    static char temp[1024];
    ULONG i;

    DPRINT((1,"ExtractTypeName(%s)\n",p));

    for(i=0;IsAddressValid((ULONG)p) && *p!=0 && *p!=':';i++,p++)
        temp[i] = *p;

    if(!IsAddressValid((ULONG)p) )
    {
        DPRINT((1,"hit invalid page %x!\n",(ULONG)p));
    }

    temp[i]=0;

    return temp;
}
