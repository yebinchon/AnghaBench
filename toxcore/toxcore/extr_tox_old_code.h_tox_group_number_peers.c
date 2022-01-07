
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int group_chat_object; } ;
typedef TYPE_1__ Tox ;
typedef TYPE_1__ Messenger ;


 int group_number_peers (int ,int) ;

int tox_group_number_peers(const Tox *tox, int groupnumber)
{
    const Messenger *m = tox;
    return group_number_peers(m->group_chat_object, groupnumber);
}
