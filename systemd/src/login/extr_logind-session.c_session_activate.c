
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* pending_switch; TYPE_1__* active; } ;
struct TYPE_7__ {scalar_t__ vtnr; TYPE_4__* seat; struct TYPE_7__* user; } ;
typedef TYPE_1__ Session ;


 int EOPNOTSUPP ;
 int assert (TYPE_1__*) ;
 int chvt (scalar_t__) ;
 int seat_complete_switch (TYPE_4__*) ;
 scalar_t__ seat_has_vts (TYPE_4__*) ;
 unsigned int session_device_try_pause_all (TYPE_1__*) ;

int session_activate(Session *s) {
        unsigned num_pending;

        assert(s);
        assert(s->user);

        if (!s->seat)
                return -EOPNOTSUPP;

        if (s->seat->active == s)
                return 0;


        if (seat_has_vts(s->seat)) {
                if (s->vtnr == 0)
                        return -EOPNOTSUPP;

                return chvt(s->vtnr);
        }
        s->seat->pending_switch = s;


        num_pending = session_device_try_pause_all(s);
        if (!num_pending)
                seat_complete_switch(s->seat);

        return 0;
}
