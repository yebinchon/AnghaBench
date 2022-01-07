
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_3__ {int public_key; } ;
typedef TYPE_1__ Client_data ;


 int id_closest (int const*,int const*,int ) ;

uint8_t is_furthest(const uint8_t *comp_client_id, Client_data *list, uint32_t length, const uint8_t *public_key)
{
    uint32_t i;

    for (i = 0; i < length; ++i)
        if (id_closest(comp_client_id, public_key, list[i].public_key) == 1)
            return 0;

    return 1;
}
