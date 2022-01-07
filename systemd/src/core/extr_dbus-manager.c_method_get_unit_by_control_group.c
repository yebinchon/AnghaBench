
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Unit ;
typedef int Manager ;


 int BUS_ERROR_NO_SUCH_UNIT ;
 int * manager_get_unit_by_cgroup (int *,char const*) ;
 int reply_unit_path (int *,int *,int *) ;
 int sd_bus_error_setf (int *,int ,char*,char const*) ;
 int sd_bus_message_read (int *,char*,char const**) ;

__attribute__((used)) static int method_get_unit_by_control_group(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        const char *cgroup;
        Unit *u;
        int r;

        r = sd_bus_message_read(message, "s", &cgroup);
        if (r < 0)
                return r;

        u = manager_get_unit_by_cgroup(m, cgroup);
        if (!u)
                return sd_bus_error_setf(error, BUS_ERROR_NO_SUCH_UNIT, "Control group '%s' is not valid or not managed by this instance", cgroup);

        return reply_unit_path(u, message, error);
}
