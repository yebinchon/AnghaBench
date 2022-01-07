
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int group_chat_object; } ;
typedef TYPE_1__ Tox ;
typedef TYPE_1__ Messenger ;


 int GROUPCHAT_TYPE_TEXT ;
 int add_groupchat (int ,int ) ;

int tox_add_groupchat(Tox *tox)
{
    Messenger *m = tox;
    return add_groupchat(m->group_chat_object, GROUPCHAT_TYPE_TEXT);
}
