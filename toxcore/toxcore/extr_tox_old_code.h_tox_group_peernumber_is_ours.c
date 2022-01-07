
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int group_chat_object; } ;
typedef TYPE_1__ Tox ;
typedef TYPE_1__ Messenger ;


 unsigned int group_peernumber_is_ours (int ,int,int) ;

unsigned int tox_group_peernumber_is_ours(const Tox *tox, int groupnumber, int peernumber)
{
    const Messenger *m = tox;
    return group_peernumber_is_ours(m->group_chat_object, groupnumber, peernumber);
}
