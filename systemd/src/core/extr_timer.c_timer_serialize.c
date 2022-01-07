
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_4__ {scalar_t__ realtime; scalar_t__ monotonic; } ;
struct TYPE_5__ {TYPE_1__ last_trigger; int result; int state; } ;
typedef TYPE_2__ Timer ;
typedef int FILE ;
typedef int FDSet ;


 TYPE_2__* TIMER (int *) ;
 int assert (int *) ;
 int serialize_item (int *,char*,int ) ;
 int serialize_usec (int *,char*,scalar_t__) ;
 int timer_result_to_string (int ) ;
 int timer_state_to_string (int ) ;

__attribute__((used)) static int timer_serialize(Unit *u, FILE *f, FDSet *fds) {
        Timer *t = TIMER(u);

        assert(u);
        assert(f);
        assert(fds);

        (void) serialize_item(f, "state", timer_state_to_string(t->state));
        (void) serialize_item(f, "result", timer_result_to_string(t->result));

        if (t->last_trigger.realtime > 0)
                (void) serialize_usec(f, "last-trigger-realtime", t->last_trigger.realtime);

        if (t->last_trigger.monotonic > 0)
                (void) serialize_usec(f, "last-trigger-monotonic", t->last_trigger.monotonic);

        return 0;
}
