
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__* sd_bus ;
struct TYPE_8__ {int * string; } ;
typedef TYPE_1__ ServerName ;


 int assert (TYPE_1__**) ;
 int sd_bus_message_append (TYPE_1__**,char*,int *) ;

__attribute__((used)) static int property_get_current_server_name(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        ServerName **s = userdata;

        assert(s);
        assert(bus);
        assert(reply);

        return sd_bus_message_append(reply, "s", *s ? (*s)->string : ((void*)0));
}
