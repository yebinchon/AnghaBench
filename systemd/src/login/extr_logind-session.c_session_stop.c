
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int stopping; int user; scalar_t__ seat; int timer_event_source; int started; } ;
typedef TYPE_1__ Session ;


 int ESTALE ;
 int assert (TYPE_1__*) ;
 int sd_event_source_unref (int ) ;
 int seat_evict_position (scalar_t__,TYPE_1__*) ;
 int session_remove_fifo (TYPE_1__*) ;
 int session_save (TYPE_1__*) ;
 int session_stop_scope (TYPE_1__*,int) ;
 int user_elect_display (int ) ;
 int user_save (int ) ;

int session_stop(Session *s, bool force) {
        int r;

        assert(s);






        if (!s->user)
                return -ESTALE;
        if (!s->started)
                return 0;
        if (s->stopping)
                return 0;

        s->timer_event_source = sd_event_source_unref(s->timer_event_source);

        if (s->seat)
                seat_evict_position(s->seat, s);


        session_remove_fifo(s);


        r = session_stop_scope(s, force);

        s->stopping = 1;

        user_elect_display(s->user);

        session_save(s);
        user_save(s->user);

        return r;
}
