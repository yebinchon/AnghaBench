
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int IPv4Address; } ;
struct TYPE_6__ {int Type; TYPE_2__ Address; } ;
typedef TYPE_1__* PIP_ADDRESS ;
typedef int IPv6_RAW_ADDRESS ;
typedef int BOOLEAN ;


 int DbgPrint (char*) ;
 int FALSE ;


 int RtlCompareMemory (TYPE_2__*,TYPE_2__*,int) ;

BOOLEAN AddrIsEqual(
    PIP_ADDRESS Address1,
    PIP_ADDRESS Address2)
{
    if (Address1->Type != Address2->Type) {
        DbgPrint("AddrIsEqual: Unequal Address Types\n");
        return FALSE;
    }

    switch (Address1->Type) {
        case 129:
            return (Address1->Address.IPv4Address == Address2->Address.IPv4Address);

        case 128:
            return (RtlCompareMemory(&Address1->Address, &Address2->Address,
                sizeof(IPv6_RAW_ADDRESS)) == sizeof(IPv6_RAW_ADDRESS));
            break;

        default:
            DbgPrint("AddrIsEqual: Bad address type\n");
            break;
    }

    return FALSE;
}
