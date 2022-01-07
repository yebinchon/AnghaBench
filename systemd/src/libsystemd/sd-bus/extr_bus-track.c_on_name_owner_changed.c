
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_track ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int assert (int *) ;
 int bus_track_remove_name_fully (int *,char const*) ;
 int sd_bus_message_read (int *,char*,char const**,char const**,char const**) ;

__attribute__((used)) static int on_name_owner_changed(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        sd_bus_track *track = userdata;
        const char *name, *old, *new;
        int r;

        assert(message);
        assert(track);

        r = sd_bus_message_read(message, "sss", &name, &old, &new);
        if (r < 0)
                return 0;

        bus_track_remove_name_fully(track, name);
        return 0;
}
