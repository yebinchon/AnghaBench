
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ cgroup_path; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ sd_bus ;
typedef TYPE_1__ Unit ;


 int assert (TYPE_1__*) ;
 char* empty_to_root (scalar_t__) ;
 int sd_bus_message_append (TYPE_1__*,char*,char const*) ;

__attribute__((used)) static int property_get_cgroup(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Unit *u = userdata;
        const char *t = ((void*)0);

        assert(bus);
        assert(reply);
        assert(u);







        if (u->cgroup_path)
                t = empty_to_root(u->cgroup_path);

        return sd_bus_message_append(reply, "s", t);
}
