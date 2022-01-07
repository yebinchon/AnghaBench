
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
struct TYPE_10__ {scalar_t__ lldp_emit_event_source; TYPE_2__* manager; int lldp_tx_fast; TYPE_1__* network; } ;
struct TYPE_9__ {int event; } ;
struct TYPE_8__ {scalar_t__ lldp_emit; } ;
typedef TYPE_3__ Link ;


 scalar_t__ LLDP_EMIT_NO ;
 scalar_t__ LLDP_FAST_TX_USEC ;
 scalar_t__ LLDP_JITTER_USEC ;
 int LLDP_TX_FAST_INIT ;
 int assert (TYPE_3__*) ;
 int clock_boottime_or_monotonic () ;
 int link_lldp_emit_stop (TYPE_3__*) ;
 scalar_t__ now (int ) ;
 int on_lldp_timer ;
 scalar_t__ random_u64 () ;
 int sd_event_add_time (int ,scalar_t__*,int ,scalar_t__,int ,int ,TYPE_3__*) ;
 int sd_event_source_get_time (scalar_t__,scalar_t__*) ;
 int sd_event_source_set_description (scalar_t__,char*) ;
 int sd_event_source_set_time (scalar_t__,scalar_t__) ;
 scalar_t__ usec_add (scalar_t__,scalar_t__) ;

int link_lldp_emit_start(Link *link) {
        usec_t next;
        int r;

        assert(link);

        if (!link->network || link->network->lldp_emit == LLDP_EMIT_NO) {
                link_lldp_emit_stop(link);
                return 0;
        }



        link->lldp_tx_fast = LLDP_TX_FAST_INIT;

        next = usec_add(usec_add(now(clock_boottime_or_monotonic()), LLDP_FAST_TX_USEC),
                     (usec_t) random_u64() % LLDP_JITTER_USEC);

        if (link->lldp_emit_event_source) {
                usec_t old;


                r = sd_event_source_get_time(link->lldp_emit_event_source, &old);
                if (r < 0)
                        return r;

                if (old <= next)
                        return 0;

                return sd_event_source_set_time(link->lldp_emit_event_source, next);
        } else {
                r = sd_event_add_time(
                                link->manager->event,
                                &link->lldp_emit_event_source,
                                clock_boottime_or_monotonic(),
                                next,
                                0,
                                on_lldp_timer,
                                link);
                if (r < 0)
                        return r;

                (void) sd_event_source_set_description(link->lldp_emit_event_source, "lldp-tx");
        }

        return 0;
}
