
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int IPv4Address; } ;
struct TYPE_5__ {int Type; TYPE_1__ Address; } ;
typedef TYPE_2__* PIP_ADDRESS ;
typedef int BOOLEAN ;


 int FALSE ;



BOOLEAN AddrIsUnspecified(
    PIP_ADDRESS Address)







{
    switch (Address->Type) {
        case 129:
            return (Address->Address.IPv4Address == 0 ||
                    Address->Address.IPv4Address == 0xFFFFFFFF);

        case 128:

        default:
            return FALSE;
    }
}
