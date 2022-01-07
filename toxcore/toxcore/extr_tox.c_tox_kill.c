
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int group_chat_object; } ;
typedef TYPE_1__ Tox ;
typedef TYPE_1__ Messenger ;


 int kill_groupchats (int ) ;
 int kill_messenger (TYPE_1__*) ;
 int logger_kill_global () ;

void tox_kill(Tox *tox)
{
    Messenger *m = tox;
    kill_groupchats(m->group_chat_object);
    kill_messenger(m);
    logger_kill_global();
}
