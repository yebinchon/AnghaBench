
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int group_chat_object; } ;
typedef TYPE_1__ Tox ;
typedef TYPE_1__ Messenger ;


 int del_groupchat (int ,int) ;

int tox_del_groupchat(Tox *tox, int groupnumber)
{
    Messenger *m = tox;
    return del_groupchat(m->group_chat_object, groupnumber);
}
