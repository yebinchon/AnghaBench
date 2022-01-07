
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; int io_event_source; int timer_event_source; } ;
typedef TYPE_1__ sd_lldp ;


 int assert (TYPE_1__*) ;
 int event_source_disable (int ) ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static void lldp_reset(sd_lldp *lldp) {
        assert(lldp);

        (void) event_source_disable(lldp->timer_event_source);
        lldp->io_event_source = sd_event_source_unref(lldp->io_event_source);
        lldp->fd = safe_close(lldp->fd);
}
