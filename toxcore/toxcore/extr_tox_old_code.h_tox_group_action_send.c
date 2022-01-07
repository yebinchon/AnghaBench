
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int group_chat_object; } ;
typedef TYPE_1__ Tox ;
typedef TYPE_1__ Messenger ;


 int group_action_send (int ,int,int const*,int ) ;

int tox_group_action_send(Tox *tox, int groupnumber, const uint8_t *action, uint16_t length)
{
    Messenger *m = tox;
    return group_action_send(m->group_chat_object, groupnumber, action, length);
}
