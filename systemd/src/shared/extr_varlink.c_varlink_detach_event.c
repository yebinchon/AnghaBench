
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event; } ;
typedef TYPE_1__ Varlink ;


 int sd_event_unref (int ) ;
 int varlink_detach_event_sources (TYPE_1__*) ;

void varlink_detach_event(Varlink *v) {
        if (!v)
                return;

        varlink_detach_event_sources(v);

        v->event = sd_event_unref(v->event);
}
