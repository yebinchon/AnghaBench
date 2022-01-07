
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
typedef int Unit ;
struct TYPE_3__ {int timer_event_source; } ;
typedef TYPE_1__ Scope ;


 TYPE_1__* SCOPE (int *) ;
 scalar_t__ USEC_INFINITY ;
 int sd_event_source_get_time (int ,scalar_t__*) ;

__attribute__((used)) static int scope_get_timeout(Unit *u, usec_t *timeout) {
        Scope *s = SCOPE(u);
        usec_t t;
        int r;

        if (!s->timer_event_source)
                return 0;

        r = sd_event_source_get_time(s->timer_event_source, &t);
        if (r < 0)
                return r;
        if (t == USEC_INFINITY)
                return 0;

        *timeout = t;
        return 1;
}
