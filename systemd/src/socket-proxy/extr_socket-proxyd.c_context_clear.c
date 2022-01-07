
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int resolve; int event; int connections; int listen; } ;
typedef TYPE_1__ Context ;


 int assert (TYPE_1__*) ;
 int connection_free ;
 int sd_event_source_unref ;
 int sd_event_unref (int ) ;
 int sd_resolve_unref (int ) ;
 int set_free_with_destructor (int ,int ) ;

__attribute__((used)) static void context_clear(Context *context) {
        assert(context);

        set_free_with_destructor(context->listen, sd_event_source_unref);
        set_free_with_destructor(context->connections, connection_free);

        sd_event_unref(context->event);
        sd_resolve_unref(context->resolve);
}
