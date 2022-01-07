
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sd_bus_message ;


 int UNIT_SCOPE ;
 int arg_property ;
 int assert (int *) ;
 int bus_log_create_error (int) ;
 scalar_t__ getpid_cached () ;
 int sd_bus_message_append (int *,char*,char*,char*,int,int ) ;
 int transient_cgroup_set_properties (int *) ;
 int transient_kill_set_properties (int *) ;
 int transient_unit_set_properties (int *,int ,int ) ;

__attribute__((used)) static int transient_scope_set_properties(sd_bus_message *m) {
        int r;

        assert(m);

        r = transient_unit_set_properties(m, UNIT_SCOPE, arg_property);
        if (r < 0)
                return r;

        r = transient_kill_set_properties(m);
        if (r < 0)
                return r;

        r = transient_cgroup_set_properties(m);
        if (r < 0)
                return r;

        r = sd_bus_message_append(m, "(sv)", "PIDs", "au", 1, (uint32_t) getpid_cached());
        if (r < 0)
                return bus_log_create_error(r);

        return 0;
}
