
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Unit ;
typedef int Manager ;


 int assert (int *) ;
 int bus_get_unit_by_name (int *,int *,char const*,int **,int *) ;
 int reply_unit_path (int *,int *,int *) ;
 int sd_bus_message_read (int *,char*,char const**) ;

__attribute__((used)) static int method_get_unit(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        const char *name;
        Unit *u;
        int r;

        assert(message);
        assert(m);



        r = sd_bus_message_read(message, "s", &name);
        if (r < 0)
                return r;

        r = bus_get_unit_by_name(m, message, name, &u, error);
        if (r < 0)
                return r;

        return reply_unit_path(u, message, error);
}
