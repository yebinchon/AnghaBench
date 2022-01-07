
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int public_key; } ;
typedef TYPE_1__ Client_data ;


 scalar_t__ id_equal (int const*,int ) ;

int client_in_list(Client_data *list, uint32_t length, const uint8_t *public_key)
{
    int i;

    for (i = 0; i < (int)length; ++i)
        if (id_equal(public_key, list[i].public_key))
            return i;

    return -1;
}
