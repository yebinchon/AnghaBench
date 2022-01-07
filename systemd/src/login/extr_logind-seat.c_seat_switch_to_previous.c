
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int position_count; scalar_t__* positions; TYPE_1__* active; } ;
struct TYPE_4__ {unsigned int position; } ;
typedef TYPE_2__ Seat ;


 int EINVAL ;
 int session_activate (scalar_t__) ;

int seat_switch_to_previous(Seat *s) {
        unsigned start, i;

        if (s->position_count == 0)
                return -EINVAL;

        start = 1;
        if (s->active && s->active->position > 0)
                start = s->active->position;

        for (i = start - 1; i > 0; --i)
                if (s->positions[i])
                        return session_activate(s->positions[i]);

        for (i = s->position_count - 1; i > start; --i)
                if (s->positions[i])
                        return session_activate(s->positions[i]);

        return -EINVAL;
}
