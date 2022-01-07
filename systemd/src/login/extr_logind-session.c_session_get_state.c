
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fifo_fd; scalar_t__ scope_job; scalar_t__ timer_event_source; scalar_t__ stopping; } ;
typedef int SessionState ;
typedef TYPE_1__ Session ;


 int SESSION_ACTIVE ;
 int SESSION_CLOSING ;
 int SESSION_ONLINE ;
 int SESSION_OPENING ;
 int assert (TYPE_1__*) ;
 scalar_t__ session_is_active (TYPE_1__*) ;

SessionState session_get_state(Session *s) {
        assert(s);


        if (s->stopping || s->timer_event_source)
                return SESSION_CLOSING;

        if (s->scope_job || s->fifo_fd < 0)
                return SESSION_OPENING;

        if (session_is_active(s))
                return SESSION_ACTIVE;

        return SESSION_ONLINE;
}
