
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int id; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ Unit ;
typedef unsigned int ExecDirectoryType ;
typedef unsigned int ExecCleanMask ;


 int BUS_ERROR_NOTHING_TO_CLEAN ;
 int BUS_ERROR_UNIT_BUSY ;
 int CAP_DAC_OVERRIDE ;
 int EBUSY ;
 int EOPNOTSUPP ;
 int EUNATCH ;
 unsigned int EXEC_CLEAN_ALL ;
 int N_ (char*) ;
 int SD_BUS_ERROR_INVALID_ARGS ;
 int SD_BUS_ERROR_NOT_SUPPORTED ;
 int assert (TYPE_1__*) ;
 int bus_verify_manage_units_async_full (TYPE_1__*,char*,int ,int ,int,TYPE_1__*,int *) ;
 unsigned int exec_resource_type_from_string (char const*) ;
 int mac_selinux_unit_access_check (TYPE_1__*,TYPE_1__*,char*,int *) ;
 int sd_bus_error_setf (int *,int ,char*,...) ;
 int sd_bus_message_enter_container (TYPE_1__*,char,char*) ;
 int sd_bus_message_exit_container (TYPE_1__*) ;
 int sd_bus_message_read (TYPE_1__*,char*,char const**) ;
 int sd_bus_reply_method_return (TYPE_1__*,int *) ;
 scalar_t__ streq (char const*,char*) ;
 int unit_clean (TYPE_1__*,unsigned int) ;

int bus_unit_method_clean(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        ExecCleanMask mask = 0;
        Unit *u = userdata;
        int r;

        assert(message);
        assert(u);

        r = mac_selinux_unit_access_check(u, message, "stop", error);
        if (r < 0)
                return r;

        r = sd_bus_message_enter_container(message, 'a', "s");
        if (r < 0)
                return r;

        for (;;) {
                const char *i;

                r = sd_bus_message_read(message, "s", &i);
                if (r < 0)
                        return r;
                if (r == 0)
                        break;

                if (streq(i, "all"))
                        mask |= EXEC_CLEAN_ALL;
                else {
                        ExecDirectoryType t;

                        t = exec_resource_type_from_string(i);
                        if (t < 0)
                                return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid resource type: %s", i);

                        mask |= 1U << t;
                }
        }

        r = sd_bus_message_exit_container(message);
        if (r < 0)
                return r;

        r = bus_verify_manage_units_async_full(
                        u,
                        "clean",
                        CAP_DAC_OVERRIDE,
                        N_("Authentication is required to delete files and directories associated with '$(unit)'."),
                        1,
                        message,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        r = unit_clean(u, mask);
        if (r == -EOPNOTSUPP)
                return sd_bus_error_setf(error, SD_BUS_ERROR_NOT_SUPPORTED, "Unit '%s' does not supporting cleaning.", u->id);
        if (r == -EUNATCH)
                return sd_bus_error_setf(error, BUS_ERROR_NOTHING_TO_CLEAN, "No matching resources found.");
        if (r == -EBUSY)
                return sd_bus_error_setf(error, BUS_ERROR_UNIT_BUSY, "Unit is not inactive or has pending job.");
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}
