
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int unit_file_scope; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef int UnitFileState ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int mac_selinux_access_check (TYPE_1__*,char*,int *) ;
 int sd_bus_message_read (TYPE_1__*,char*,char const**) ;
 int sd_bus_reply_method_return (TYPE_1__*,char*,int ) ;
 int unit_file_get_state (int ,int *,char const*,int *) ;
 int unit_file_state_to_string (int ) ;

__attribute__((used)) static int method_get_unit_file_state(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        const char *name;
        UnitFileState state;
        int r;

        assert(message);
        assert(m);



        r = mac_selinux_access_check(message, "status", error);
        if (r < 0)
                return r;

        r = sd_bus_message_read(message, "s", &name);
        if (r < 0)
                return r;

        r = unit_file_get_state(m->unit_file_scope, ((void*)0), name, &state);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, "s", unit_file_state_to_string(state));
}
