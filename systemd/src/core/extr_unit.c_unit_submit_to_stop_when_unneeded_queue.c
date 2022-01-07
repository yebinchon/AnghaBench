
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int in_stop_when_unneeded_queue; TYPE_1__* manager; int stop_when_unneeded; } ;
typedef TYPE_2__ Unit ;
struct TYPE_7__ {int stop_when_unneeded_queue; } ;


 int LIST_PREPEND (int ,int ,TYPE_2__*) ;
 int UNIT_IS_ACTIVE_OR_RELOADING (int ) ;
 int assert (TYPE_2__*) ;
 int stop_when_unneeded_queue ;
 int unit_active_state (TYPE_2__*) ;

void unit_submit_to_stop_when_unneeded_queue(Unit *u) {
        assert(u);

        if (u->in_stop_when_unneeded_queue)
                return;

        if (!u->stop_when_unneeded)
                return;

        if (!UNIT_IS_ACTIVE_OR_RELOADING(unit_active_state(u)))
                return;

        LIST_PREPEND(stop_when_unneeded_queue, u->manager->stop_when_unneeded_queue, u);
        u->in_stop_when_unneeded_queue = 1;
}
