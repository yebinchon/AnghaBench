
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pending_switch; } ;
typedef int Session ;
typedef TYPE_1__ Seat ;


 int * TAKE_PTR (int ) ;
 int assert (TYPE_1__*) ;
 int seat_set_active (TYPE_1__*,int *) ;

void seat_complete_switch(Seat *s) {
        Session *session;

        assert(s);


        if (!s->pending_switch)
                return;

        session = TAKE_PTR(s->pending_switch);

        seat_set_active(s, session);
}
