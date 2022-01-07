
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_5__ {size_t num_chats; TYPE_1__* chats; } ;
struct TYPE_4__ {int identifier; } ;
typedef TYPE_2__ Group_Chats ;


 int GROUP_IDENTIFIER_LENGTH ;
 scalar_t__ sodium_memcmp (int ,int const*,int ) ;

__attribute__((used)) static int get_group_num(const Group_Chats *g_c, const uint8_t *identifier)
{
    uint32_t i;

    for (i = 0; i < g_c->num_chats; ++i)
        if (sodium_memcmp(g_c->chats[i].identifier, identifier, GROUP_IDENTIFIER_LENGTH) == 0)
            return i;

    return -1;
}
