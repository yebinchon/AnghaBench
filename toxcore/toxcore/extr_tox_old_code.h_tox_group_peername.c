
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int group_chat_object; } ;
typedef TYPE_1__ Tox ;
typedef TYPE_1__ Messenger ;


 int group_peername (int ,int,int,int *) ;

int tox_group_peername(const Tox *tox, int groupnumber, int peernumber, uint8_t *name)
{
    const Messenger *m = tox;
    return group_peername(m->group_chat_object, groupnumber, peernumber, name);
}
