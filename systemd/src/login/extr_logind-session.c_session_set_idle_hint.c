
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int idle_hint; int manager; int user; scalar_t__ seat; int idle_hint_timestamp; } ;
typedef TYPE_1__ Session ;


 int assert (TYPE_1__*) ;
 int dual_timestamp_get (int *) ;
 int manager_send_changed (int ,char*,char*,char*,int *) ;
 int seat_send_changed (scalar_t__,char*,char*,char*,int *) ;
 int session_send_changed (TYPE_1__*,char*,char*,char*,int *) ;
 int user_send_changed (int ,char*,char*,char*,int *) ;

void session_set_idle_hint(Session *s, bool b) {
        assert(s);

        if (s->idle_hint == b)
                return;

        s->idle_hint = b;
        dual_timestamp_get(&s->idle_hint_timestamp);

        session_send_changed(s, "IdleHint", "IdleSinceHint", "IdleSinceHintMonotonic", ((void*)0));

        if (s->seat)
                seat_send_changed(s->seat, "IdleHint", "IdleSinceHint", "IdleSinceHintMonotonic", ((void*)0));

        user_send_changed(s->user, "IdleHint", "IdleSinceHint", "IdleSinceHintMonotonic", ((void*)0));
        manager_send_changed(s->manager, "IdleHint", "IdleSinceHint", "IdleSinceHintMonotonic", ((void*)0));
}
