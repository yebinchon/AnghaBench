
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int until; } ;
typedef TYPE_1__ sd_lldp_neighbor ;
struct TYPE_10__ {int event_priority; int timer_event_source; int event; int neighbor_by_expiry; } ;
typedef TYPE_2__ sd_lldp ;


 int assert (TYPE_2__*) ;
 int clock_boottime_or_monotonic () ;
 int event_reset_time (int ,int *,int ,int ,int ,int ,TYPE_2__*,int ,char*,int) ;
 int event_source_disable (int ) ;
 int lldp_neighbor_start_ttl (TYPE_1__*) ;
 int on_timer_event ;
 TYPE_1__* prioq_peek (int ) ;

__attribute__((used)) static int lldp_start_timer(sd_lldp *lldp, sd_lldp_neighbor *neighbor) {
        sd_lldp_neighbor *n;

        assert(lldp);

        if (neighbor)
                lldp_neighbor_start_ttl(neighbor);

        n = prioq_peek(lldp->neighbor_by_expiry);
        if (!n)
                return event_source_disable(lldp->timer_event_source);

        if (!lldp->event)
                return 0;

        return event_reset_time(lldp->event, &lldp->timer_event_source,
                                clock_boottime_or_monotonic(),
                                n->until, 0,
                                on_timer_event, lldp,
                                lldp->event_priority, "lldp-timer", 1);
}
