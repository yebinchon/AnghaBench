
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;


 int SD_BUS_TYPE_STRUCT ;
 int sd_bus_message_enter_container (int *,int ,char const*) ;
 int sd_bus_message_exit_container (int *) ;
 int sd_bus_message_peek_type (int *,int *,char const**) ;
 int sd_bus_message_read_basic (int *,char const,void*) ;
 int sd_bus_message_skip (int *,char const*) ;

__attribute__((used)) static int prop_map_first_of_struct(sd_bus *bus, const char *member, sd_bus_message *m, sd_bus_error *error, void *userdata) {
        const char *contents;
        int r;

        r = sd_bus_message_peek_type(m, ((void*)0), &contents);
        if (r < 0)
                return r;

        r = sd_bus_message_enter_container(m, SD_BUS_TYPE_STRUCT, contents);
        if (r < 0)
                return r;

        r = sd_bus_message_read_basic(m, contents[0], userdata);
        if (r < 0)
                return r;

        r = sd_bus_message_skip(m, contents+1);
        if (r < 0)
                return r;

        r = sd_bus_message_exit_container(m);
        if (r < 0)
                return r;

        return 0;
}
