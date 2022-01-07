
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {int IPv4Address; } ;
struct TYPE_6__ {scalar_t__ Type; TYPE_1__ Address; } ;
typedef size_t* PUCHAR ;
typedef TYPE_2__* PIP_ADDRESS ;
typedef int IPv6_RAW_ADDRESS ;
typedef int IPv4_RAW_ADDRESS ;


 int DEBUG_ROUTER ;
 scalar_t__ IP_ADDRESS_V4 ;
 int TI_DbgPrint (int ,char*) ;

UINT CommonPrefixLength(
    PIP_ADDRESS Address1,
    PIP_ADDRESS Address2)
{
    PUCHAR Addr1, Addr2;
    UINT Size;
    UINT i, j;
    UINT Bitmask;

    TI_DbgPrint(DEBUG_ROUTER, ("Called. Address1 (0x%X)  Address2 (0x%X).\n", Address1, Address2));




    if (Address1->Type == IP_ADDRESS_V4)
        Size = sizeof(IPv4_RAW_ADDRESS);
    else
        Size = sizeof(IPv6_RAW_ADDRESS);

    Addr1 = (PUCHAR)&Address1->Address.IPv4Address;
    Addr2 = (PUCHAR)&Address2->Address.IPv4Address;


    for (i = 0; i < Size && Addr1[i] == Addr2[i]; i++);
    if( i == Size ) return 8 * i;


    Bitmask = 0x80;
    for (j = 0; (Addr1[i] & Bitmask) == (Addr2[i] & Bitmask); j++)
        Bitmask >>= 1;

    TI_DbgPrint(DEBUG_ROUTER, ("Returning %d\n", 8 * i + j));

    return 8 * i + j;
}
