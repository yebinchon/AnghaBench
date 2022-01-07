
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
typedef int CGroupMask ;
typedef scalar_t__ CGroupController ;


 int CGROUP_CONTROLLER_TO_MASK (scalar_t__) ;
 scalar_t__ _CGROUP_CONTROLLER_MAX ;
 int assert (int *) ;
 int cgroup_controller_to_string (scalar_t__) ;
 int sd_bus_message_append (int *,char*,int ) ;
 int sd_bus_message_close_container (int *) ;
 int sd_bus_message_open_container (int *,char,char*) ;

__attribute__((used)) static int property_get_cgroup_mask(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        CGroupMask *mask = userdata;
        CGroupController ctrl;
        int r;

        assert(bus);
        assert(reply);

        r = sd_bus_message_open_container(reply, 'a', "s");
        if (r < 0)
                return r;

        for (ctrl = 0; ctrl < _CGROUP_CONTROLLER_MAX; ctrl++) {
                if ((*mask & CGROUP_CONTROLLER_TO_MASK(ctrl)) == 0)
                        continue;

                r = sd_bus_message_append(reply, "s", cgroup_controller_to_string(ctrl));
                if (r < 0)
                        return r;
        }

        return sd_bus_message_close_container(reply);
}
