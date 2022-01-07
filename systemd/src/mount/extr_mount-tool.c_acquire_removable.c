
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 scalar_t__ ACTION_AUTOMOUNT ;
 scalar_t__ ACTION_DEFAULT ;
 int USEC_PER_SEC ;
 scalar_t__ arg_action ;
 int arg_bind_device ;
 int arg_timeout_idle ;
 scalar_t__ arg_timeout_idle_set ;
 int log_debug (char*) ;
 scalar_t__ parse_boolean (char const*) ;
 scalar_t__ sd_device_get_parent (int *,int **) ;
 scalar_t__ sd_device_get_subsystem (int *,char const**) ;
 scalar_t__ sd_device_get_sysattr_value (int *,char*,char const**) ;
 int streq (char const*,char*) ;

__attribute__((used)) static int acquire_removable(sd_device *d) {
        const char *v;


        if (arg_action != ACTION_DEFAULT && arg_timeout_idle_set && arg_bind_device >= 0)
                return 0;

        for (;;) {
                if (sd_device_get_sysattr_value(d, "removable", &v) > 0)
                        break;

                if (sd_device_get_parent(d, &d) < 0)
                        return 0;

                if (sd_device_get_subsystem(d, &v) < 0 || !streq(v, "block"))
                        return 0;
        }

        if (parse_boolean(v) <= 0)
                return 0;

        log_debug("Discovered removable device.");

        if (arg_action == ACTION_DEFAULT) {
                log_debug("Automatically turning on automount.");
                arg_action = ACTION_AUTOMOUNT;
        }

        if (!arg_timeout_idle_set) {
                log_debug("Setting idle timeout to 1s.");
                arg_timeout_idle = USEC_PER_SEC;
        }

        if (arg_bind_device < 0) {
                log_debug("Binding automount unit to device.");
                arg_bind_device = 1;
        }

        return 1;
}
