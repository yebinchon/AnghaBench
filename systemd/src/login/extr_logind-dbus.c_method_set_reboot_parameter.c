
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int polkit_registry; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ Manager ;


 int CAP_SYS_ADMIN ;
 int SD_BUS_ERROR_NOT_SUPPORTED ;
 int UID_INVALID ;
 int assert (TYPE_1__*) ;
 int bus_verify_polkit_async (TYPE_1__*,int ,char*,int *,int,int ,int *,int *) ;
 int detect_container () ;
 int sd_bus_error_setf (int *,int ,char*) ;
 int sd_bus_message_read (TYPE_1__*,char*,char const**) ;
 int sd_bus_reply_method_return (TYPE_1__*,int *) ;
 int update_reboot_parameter_and_warn (char const*,int) ;

__attribute__((used)) static int method_set_reboot_parameter(
                sd_bus_message *message,
                void *userdata,
                sd_bus_error *error) {

        Manager *m = userdata;
        const char *arg;
        int r;

        assert(message);
        assert(m);

        r = sd_bus_message_read(message, "s", &arg);
        if (r < 0)
                return r;

        r = detect_container();
        if (r < 0)
                return r;
        if (r > 0)
                return sd_bus_error_setf(error, SD_BUS_ERROR_NOT_SUPPORTED,
                                         "Reboot parameter not supported in containers, refusing.");

        r = bus_verify_polkit_async(message,
                                    CAP_SYS_ADMIN,
                                    "org.freedesktop.login1.set-reboot-parameter",
                                    ((void*)0),
                                    0,
                                    UID_INVALID,
                                    &m->polkit_registry,
                                    error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        r = update_reboot_parameter_and_warn(arg, 0);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}
