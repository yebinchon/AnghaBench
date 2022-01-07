
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint32_t ;
struct TYPE_3__ {int assoc4; int assoc6; } ;
typedef TYPE_1__ Client_data ;


 int mark_good (int *) ;

void mark_all_good(Client_data *list, uint32_t length, uint8_t ipv6)
{
    uint32_t i;

    for (i = 0; i < length; ++i) {
        if (ipv6)
            mark_good(&list[i].assoc6);
        else
            mark_good(&list[i].assoc4);
    }
}
