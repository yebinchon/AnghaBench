
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int position_count; int * positions; } ;
typedef TYPE_1__ Seat ;


 int EINVAL ;
 int chvt (unsigned int) ;
 scalar_t__ seat_has_vts (TYPE_1__*) ;
 int session_activate (int ) ;

int seat_switch_to(Seat *s, unsigned num) {


        if (num == 0)
                return -EINVAL;

        if (num >= s->position_count || !s->positions[num]) {

                if (seat_has_vts(s) && num < 64)
                        return chvt(num);

                return -EINVAL;
        }

        return session_activate(s->positions[num]);
}
