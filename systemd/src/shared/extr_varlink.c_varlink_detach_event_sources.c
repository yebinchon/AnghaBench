
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* defer_event_source; void* quit_event_source; void* time_event_source; void* io_event_source; } ;
typedef TYPE_1__ Varlink ;


 int assert (TYPE_1__*) ;
 void* sd_event_source_disable_unref (void*) ;

__attribute__((used)) static void varlink_detach_event_sources(Varlink *v) {
        assert(v);

        v->io_event_source = sd_event_source_disable_unref(v->io_event_source);

        v->time_event_source = sd_event_source_disable_unref(v->time_event_source);

        v->quit_event_source = sd_event_source_disable_unref(v->quit_event_source);

        v->defer_event_source = sd_event_source_disable_unref(v->defer_event_source);
}
