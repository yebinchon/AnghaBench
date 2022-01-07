
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {struct TYPE_21__* current_message; int iteration_counter; } ;
typedef TYPE_1__ sd_bus_message ;
typedef TYPE_1__ sd_bus ;


 int assert (TYPE_1__*) ;
 int bus_process_object (TYPE_1__*,TYPE_1__*) ;
 int log_debug_bus_message (TYPE_1__*) ;
 int process_builtin (TYPE_1__*,TYPE_1__*) ;
 int process_fd_check (TYPE_1__*,TYPE_1__*) ;
 int process_filter (TYPE_1__*,TYPE_1__*) ;
 int process_hello (TYPE_1__*,TYPE_1__*) ;
 int process_match (TYPE_1__*,TYPE_1__*) ;
 int process_reply (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int process_message(sd_bus *bus, sd_bus_message *m) {
        int r;

        assert(bus);
        assert(m);

        bus->current_message = m;
        bus->iteration_counter++;

        log_debug_bus_message(m);

        r = process_hello(bus, m);
        if (r != 0)
                goto finish;

        r = process_reply(bus, m);
        if (r != 0)
                goto finish;

        r = process_fd_check(bus, m);
        if (r != 0)
                goto finish;

        r = process_filter(bus, m);
        if (r != 0)
                goto finish;

        r = process_match(bus, m);
        if (r != 0)
                goto finish;

        r = process_builtin(bus, m);
        if (r != 0)
                goto finish;

        r = bus_process_object(bus, m);

finish:
        bus->current_message = ((void*)0);
        return r;
}
