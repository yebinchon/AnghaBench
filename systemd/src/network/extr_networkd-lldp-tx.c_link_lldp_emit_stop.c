
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lldp_emit_event_source; } ;
typedef TYPE_1__ Link ;


 int assert (TYPE_1__*) ;
 int sd_event_source_unref (int ) ;

void link_lldp_emit_stop(Link *link) {
        assert(link);

        link->lldp_emit_event_source = sd_event_source_unref(link->lldp_emit_event_source);
}
