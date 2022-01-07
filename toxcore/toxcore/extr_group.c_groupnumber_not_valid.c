
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {unsigned int num_chats; TYPE_1__* chats; } ;
struct TYPE_4__ {scalar_t__ status; } ;
typedef TYPE_2__ Group_Chats ;


 scalar_t__ GROUPCHAT_STATUS_NONE ;

__attribute__((used)) static uint8_t groupnumber_not_valid(const Group_Chats *g_c, int groupnumber)
{
    if ((unsigned int)groupnumber >= g_c->num_chats)
        return 1;

    if (g_c->chats == ((void*)0))
        return 1;

    if (g_c->chats[groupnumber].status == GROUPCHAT_STATUS_NONE)
        return 1;

    return 0;
}
