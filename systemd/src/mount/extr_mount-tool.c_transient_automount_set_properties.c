
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;


 int UNIT_AUTOMOUNT ;
 scalar_t__ USEC_INFINITY ;
 int arg_automount_property ;
 scalar_t__ arg_timeout_idle ;
 int assert (int *) ;
 int sd_bus_message_append (int *,char*,char*,char*,scalar_t__) ;
 int transient_unit_set_properties (int *,int ,int ) ;

__attribute__((used)) static int transient_automount_set_properties(sd_bus_message *m) {
        int r;

        assert(m);

        r = transient_unit_set_properties(m, UNIT_AUTOMOUNT, arg_automount_property);
        if (r < 0)
                return r;

        if (arg_timeout_idle != USEC_INFINITY) {
                r = sd_bus_message_append(m, "(sv)", "TimeoutIdleUSec", "t", arg_timeout_idle);
                if (r < 0)
                        return r;
        }

        return 0;
}
