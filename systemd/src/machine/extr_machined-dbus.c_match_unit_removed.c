
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int machine_units; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ Manager ;
typedef int Machine ;


 int assert (TYPE_1__*) ;
 int bus_log_parse_error (int) ;
 int * hashmap_get (int ,char const*) ;
 int machine_add_to_gc_queue (int *) ;
 int sd_bus_message_read (TYPE_1__*,char*,char const**,char const**) ;

int match_unit_removed(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        const char *path, *unit;
        Manager *m = userdata;
        Machine *machine;
        int r;

        assert(message);
        assert(m);

        r = sd_bus_message_read(message, "so", &unit, &path);
        if (r < 0) {
                bus_log_parse_error(r);
                return 0;
        }

        machine = hashmap_get(m->machine_units, unit);
        if (!machine)
                return 0;

        machine_add_to_gc_queue(machine);
        return 0;
}
