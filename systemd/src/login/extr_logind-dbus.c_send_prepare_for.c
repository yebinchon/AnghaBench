
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bus; } ;
typedef TYPE_1__ Manager ;
typedef scalar_t__ InhibitWhat ;


 scalar_t__ INHIBIT_SHUTDOWN ;
 int INHIBIT_SLEEP ;
 TYPE_1__* IN_SET (scalar_t__,scalar_t__,int ) ;
 int assert (TYPE_1__*) ;
 int sd_bus_emit_signal (int ,char*,char*,char*,char*,int) ;

__attribute__((used)) static int send_prepare_for(Manager *m, InhibitWhat w, bool _active) {
        int active = _active;

        assert(m);
        assert(IN_SET(w, INHIBIT_SHUTDOWN, INHIBIT_SLEEP));

        return sd_bus_emit_signal(m->bus,
                                  "/org/freedesktop/login1",
                                  "org.freedesktop.login1.Manager",
                                  w == INHIBIT_SHUTDOWN ? "PrepareForShutdown" : "PrepareForSleep",
                                  "b",
                                  active);
}
