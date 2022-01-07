
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* user; } ;
typedef TYPE_2__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_2__ sd_bus ;
struct TYPE_9__ {int name; } ;
typedef TYPE_2__ Session ;


 int assert (TYPE_2__*) ;
 int sd_bus_message_append (TYPE_2__*,char*,int ) ;

__attribute__((used)) static int property_get_name(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Session *s = userdata;

        assert(bus);
        assert(reply);
        assert(s);

        return sd_bus_message_append(reply, "s", s->user->name);
}
