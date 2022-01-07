
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int delegate_controllers; int delegate; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ sd_bus ;
typedef TYPE_1__ CGroupContext ;


 int assert (TYPE_1__*) ;
 int property_get_cgroup_mask (TYPE_1__*,char const*,char const*,char const*,TYPE_1__*,int *,int *) ;
 int sd_bus_message_append (TYPE_1__*,char*,int ) ;

__attribute__((used)) static int property_get_delegate_controllers(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        CGroupContext *c = userdata;

        assert(bus);
        assert(reply);
        assert(c);

        if (!c->delegate)
                return sd_bus_message_append(reply, "as", 0);

        return property_get_cgroup_mask(bus, path, interface, property, reply, &c->delegate_controllers, error);
}
