
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int int32_t ;
struct TYPE_4__ {int group_chat_object; } ;
typedef TYPE_1__ Tox ;
typedef TYPE_1__ Messenger ;


 int GROUPCHAT_TYPE_TEXT ;
 int join_groupchat (int ,int ,int ,int const*,int ) ;

int tox_join_groupchat(Tox *tox, int32_t friendnumber, const uint8_t *data, uint16_t length)
{
    Messenger *m = tox;
    return join_groupchat(m->group_chat_object, friendnumber, GROUPCHAT_TYPE_TEXT, data, length);
}
