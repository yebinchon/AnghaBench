
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int result; int active_state; int event; int bus; int match; int forward; } ;
typedef TYPE_1__ RunContext ;


 int assert (TYPE_1__*) ;
 int free (int ) ;
 int pty_forward_free (int ) ;
 int sd_bus_slot_unref (int ) ;
 int sd_bus_unref (int ) ;
 int sd_event_unref (int ) ;

__attribute__((used)) static void run_context_free(RunContext *c) {
        assert(c);

        c->forward = pty_forward_free(c->forward);
        c->match = sd_bus_slot_unref(c->match);
        c->bus = sd_bus_unref(c->bus);
        c->event = sd_event_unref(c->event);

        free(c->active_state);
        free(c->result);
}
