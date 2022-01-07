
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int * data; int polkit_registry; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ Context ;


 int CAP_SYS_ADMIN ;
 size_t PROP_STATIC_HOSTNAME ;
 int SD_BUS_ERROR_INVALID_ARGS ;
 int UID_INVALID ;
 int assert (TYPE_1__*) ;
 int bus_verify_polkit_async (TYPE_1__*,int ,char*,int *,int,int ,int *,int *) ;
 int context_update_kernel_hostname (TYPE_1__*) ;
 int context_write_data_static_hostname (TYPE_1__*) ;
 char* empty_to_null (char const*) ;
 int free_and_strdup (int *,char const*) ;
 int hostname_is_valid (char const*,int) ;
 int isempty (char const*) ;
 int log_error_errno (int,char*) ;
 int log_info (char*,int ) ;
 int sd_bus_emit_properties_changed (int ,char*,char*,char*,int *) ;
 int sd_bus_error_set_errnof (int *,int,char*) ;
 int sd_bus_error_setf (int *,int ,char*,char const*) ;
 int sd_bus_message_get_bus (TYPE_1__*) ;
 int sd_bus_message_read (TYPE_1__*,char*,char const**,int*) ;
 int sd_bus_reply_method_return (TYPE_1__*,int *) ;
 scalar_t__ streq_ptr (char const*,int ) ;
 int strna (int ) ;

__attribute__((used)) static int method_set_static_hostname(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        Context *c = userdata;
        const char *name;
        int interactive;
        int r;

        assert(m);
        assert(c);

        r = sd_bus_message_read(m, "sb", &name, &interactive);
        if (r < 0)
                return r;

        name = empty_to_null(name);

        if (streq_ptr(name, c->data[PROP_STATIC_HOSTNAME]))
                return sd_bus_reply_method_return(m, ((void*)0));

        if (!isempty(name) && !hostname_is_valid(name, 0))
                return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid static hostname '%s'", name);

        r = bus_verify_polkit_async(
                        m,
                        CAP_SYS_ADMIN,
                        "org.freedesktop.hostname1.set-static-hostname",
                        ((void*)0),
                        interactive,
                        UID_INVALID,
                        &c->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        r = free_and_strdup(&c->data[PROP_STATIC_HOSTNAME], name);
        if (r < 0)
                return r;

        r = context_update_kernel_hostname(c);
        if (r < 0) {
                log_error_errno(r, "Failed to set host name: %m");
                return sd_bus_error_set_errnof(error, r, "Failed to set hostname: %m");
        }

        r = context_write_data_static_hostname(c);
        if (r < 0) {
                log_error_errno(r, "Failed to write static host name: %m");
                return sd_bus_error_set_errnof(error, r, "Failed to set static hostname: %m");
        }

        log_info("Changed static host name to '%s'", strna(c->data[PROP_STATIC_HOSTNAME]));

        (void) sd_bus_emit_properties_changed(sd_bus_message_get_bus(m), "/org/freedesktop/hostname1", "org.freedesktop.hostname1", "StaticHostname", ((void*)0));

        return sd_bus_reply_method_return(m, ((void*)0));
}
