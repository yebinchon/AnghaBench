
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int locked_hint; } ;
typedef TYPE_1__ Session ;


 int assert (TYPE_1__*) ;
 int session_send_changed (TYPE_1__*,char*,int *) ;

void session_set_locked_hint(Session *s, bool b) {
        assert(s);

        if (s->locked_hint == b)
                return;

        s->locked_hint = b;

        session_send_changed(s, "LockedHint", ((void*)0));
}
