
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
typedef int Manager ;
typedef scalar_t__ LogTarget ;


 int SD_BUS_ERROR_INVALID_ARGS ;
 int assert (int *) ;
 scalar_t__ isempty (char const*) ;
 scalar_t__ log_target_from_string (char const*) ;
 int manager_override_log_target (int *,scalar_t__) ;
 int manager_restore_original_log_target (int *) ;
 int sd_bus_error_setf (int *,int ,char*,char const*) ;
 int sd_bus_message_read (int *,char*,char const**) ;

__attribute__((used)) static int property_set_log_target(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *value,
                void *userdata,
                sd_bus_error *error) {

        Manager *m = userdata;
        const char *t;
        int r;

        assert(bus);
        assert(value);

        r = sd_bus_message_read(value, "s", &t);
        if (r < 0)
                return r;

        if (isempty(t))
                manager_restore_original_log_target(m);
        else {
                LogTarget target;

                target = log_target_from_string(t);
                if (target < 0)
                        return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid log target '%s'", t);

                manager_override_log_target(m, target);
        }

        return 0;
}
