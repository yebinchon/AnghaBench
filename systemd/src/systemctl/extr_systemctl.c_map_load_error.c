
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;


 int isempty (char const*) ;
 int sd_bus_message_read (int *,char*,int *,char const**) ;

__attribute__((used)) static int map_load_error(sd_bus *bus, const char *member, sd_bus_message *m, sd_bus_error *error, void *userdata) {
        const char *message, **p = userdata;
        int r;

        r = sd_bus_message_read(m, "(ss)", ((void*)0), &message);
        if (r < 0)
                return r;

        if (!isempty(message))
                *p = message;

        return 0;
}
