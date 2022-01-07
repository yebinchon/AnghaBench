
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
typedef size_t ULONG ;
struct TYPE_3__ {scalar_t__ vendorid; int * vendor_name; } ;
typedef int * LPSTR ;


 size_t DIM (TYPE_1__*) ;
 TYPE_1__* PCIVendorIDs ;

LPSTR FindPCIVendorName(USHORT vendorid)
{
    ULONG i;

    for(i=0;i<DIM(PCIVendorIDs);i++)
    {
        if(vendorid == PCIVendorIDs[i].vendorid)
            return PCIVendorIDs[i].vendor_name;
    }

    return ((void*)0);
}
