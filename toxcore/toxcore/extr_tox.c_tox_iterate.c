
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int group_chat_object; } ;
typedef TYPE_1__ Tox ;
typedef TYPE_1__ Messenger ;


 int do_groupchats (int ) ;
 int do_messenger (TYPE_1__*) ;

void tox_iterate(Tox *tox)
{
    Messenger *m = tox;
    do_messenger(m);
    do_groupchats(m->group_chat_object);
}
