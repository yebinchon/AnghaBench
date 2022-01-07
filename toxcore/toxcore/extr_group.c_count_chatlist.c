
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {size_t num_chats; TYPE_1__* chats; } ;
struct TYPE_4__ {scalar_t__ status; } ;
typedef TYPE_2__ Group_Chats ;


 scalar_t__ GROUPCHAT_STATUS_NONE ;

uint32_t count_chatlist(Group_Chats *g_c)
{
    uint32_t ret = 0;
    uint32_t i;

    for (i = 0; i < g_c->num_chats; i++) {
        if (g_c->chats[i].status != GROUPCHAT_STATUS_NONE) {
            ret++;
        }
    }

    return ret;
}
