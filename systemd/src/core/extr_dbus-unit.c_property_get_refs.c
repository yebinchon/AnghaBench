
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
struct TYPE_2__ {int bus_track; } ;
typedef TYPE_1__ Unit ;


 int assert (int *) ;
 int sd_bus_message_append (int *,char*,char const*) ;
 int sd_bus_message_close_container (int *) ;
 int sd_bus_message_open_container (int *,char,char*) ;
 int sd_bus_track_count_name (int ,char const*) ;
 char* sd_bus_track_first (int ) ;
 char* sd_bus_track_next (int ) ;

__attribute__((used)) static int property_get_refs(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Unit *u = userdata;
        const char *i;
        int r;

        assert(bus);
        assert(reply);

        r = sd_bus_message_open_container(reply, 'a', "s");
        if (r < 0)
                return r;

        for (i = sd_bus_track_first(u->bus_track); i; i = sd_bus_track_next(u->bus_track)) {
                int c, k;

                c = sd_bus_track_count_name(u->bus_track, i);
                if (c < 0)
                        return c;


                for (k = 0; k < c; k++) {
                        r = sd_bus_message_append(reply, "s", i);
                        if (r < 0)
                                return r;
                }
        }

        return sd_bus_message_close_container(reply);
}
