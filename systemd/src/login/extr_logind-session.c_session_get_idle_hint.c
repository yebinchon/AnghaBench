
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
typedef int dual_timestamp ;
struct TYPE_6__ {int idle_hint; TYPE_1__* manager; int idle_hint_timestamp; int leader; scalar_t__ tty; int type; } ;
struct TYPE_5__ {scalar_t__ idle_action_usec; } ;
typedef TYPE_2__ Session ;


 int CLOCK_REALTIME ;
 scalar_t__ SESSION_TYPE_IS_GRAPHICAL (int ) ;
 int assert (TYPE_2__*) ;
 int dual_timestamp_from_realtime (int *,scalar_t__) ;
 int get_process_ctty_atime (int ,scalar_t__*) ;
 int get_tty_atime (scalar_t__,scalar_t__*) ;
 scalar_t__ now (int ) ;
 scalar_t__ pid_is_valid (int ) ;

int session_get_idle_hint(Session *s, dual_timestamp *t) {
        usec_t atime = 0, n;
        int r;

        assert(s);


        if (s->idle_hint) {
                if (t)
                        *t = s->idle_hint_timestamp;

                return s->idle_hint;
        }



        if (SESSION_TYPE_IS_GRAPHICAL(s->type))
                goto dont_know;



        if (s->tty) {
                r = get_tty_atime(s->tty, &atime);
                if (r >= 0)
                        goto found_atime;
        }



        if (pid_is_valid(s->leader)) {
                r = get_process_ctty_atime(s->leader, &atime);
                if (r >= 0)
                        goto found_atime;
        }

dont_know:
        if (t)
                *t = s->idle_hint_timestamp;

        return 0;

found_atime:
        if (t)
                dual_timestamp_from_realtime(t, atime);

        n = now(CLOCK_REALTIME);

        if (s->manager->idle_action_usec <= 0)
                return 0;

        return atime + s->manager->idle_action_usec <= n;
}
