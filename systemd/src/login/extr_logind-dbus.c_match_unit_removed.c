
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int user_units; int session_units; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef int User ;
typedef int Session ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int bus_log_parse_error (int) ;
 void* hashmap_get (int ,char const*) ;
 int sd_bus_message_read (TYPE_1__*,char*,char const**,char const**) ;
 int session_add_to_gc_queue (int *) ;
 int user_add_to_gc_queue (int *) ;

int match_unit_removed(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        const char *path, *unit;
        Manager *m = userdata;
        Session *session;
        User *user;
        int r;

        assert(message);
        assert(m);

        r = sd_bus_message_read(message, "so", &unit, &path);
        if (r < 0) {
                bus_log_parse_error(r);
                return 0;
        }

        session = hashmap_get(m->session_units, unit);
        if (session)
                session_add_to_gc_queue(session);

        user = hashmap_get(m->user_units, unit);
        if (user)
                user_add_to_gc_queue(user);

        return 0;
}
