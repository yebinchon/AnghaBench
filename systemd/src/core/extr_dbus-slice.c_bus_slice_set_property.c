
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int UnitWriteFlags ;
typedef char const Unit ;
struct TYPE_3__ {int cgroup_context; } ;
typedef TYPE_1__ Slice ;


 TYPE_1__* SLICE (char const*) ;
 int assert (char const*) ;
 int bus_cgroup_set_property (char const*,int *,char const*,int *,int ,int *) ;

int bus_slice_set_property(
                Unit *u,
                const char *name,
                sd_bus_message *message,
                UnitWriteFlags flags,
                sd_bus_error *error) {

        Slice *s = SLICE(u);

        assert(name);
        assert(u);

        return bus_cgroup_set_property(u, &s->cgroup_context, name, message, flags, error);
}
