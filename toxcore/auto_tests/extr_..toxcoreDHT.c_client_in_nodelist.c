
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef size_t uint16_t ;
struct TYPE_3__ {int public_key; } ;
typedef TYPE_1__ Node_format ;


 scalar_t__ id_equal (int ,int const*) ;

__attribute__((used)) static int client_in_nodelist(const Node_format *list, uint16_t length, const uint8_t *public_key)
{
    uint32_t i;

    for (i = 0; i < length; ++i) {
        if (id_equal(list[i].public_key, public_key))
            return 1;
    }

    return 0;
}
