
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bus; int dynamic_hostname; } ;
typedef TYPE_1__ Manager ;


 scalar_t__ free_and_strdup (int *,char const*) ;
 int log_debug (char*,...) ;
 int log_error_errno (int,char*) ;
 int log_oom () ;
 int sd_bus_call_method_async (int ,int *,char*,char*,char*,char*,int ,TYPE_1__*,char*,char const*,int) ;
 scalar_t__ sd_bus_is_ready (int ) ;
 int set_hostname_handler ;
 int strna (char const*) ;

int manager_set_hostname(Manager *m, const char *hostname) {
        int r;

        log_debug("Setting transient hostname: '%s'", strna(hostname));

        if (free_and_strdup(&m->dynamic_hostname, hostname) < 0)
                return log_oom();

        if (!m->bus || sd_bus_is_ready(m->bus) <= 0) {
                log_debug("Not connected to system bus, setting hostname later.");
                return 0;
        }

        r = sd_bus_call_method_async(
                        m->bus,
                        ((void*)0),
                        "org.freedesktop.hostname1",
                        "/org/freedesktop/hostname1",
                        "org.freedesktop.hostname1",
                        "SetHostname",
                        set_hostname_handler,
                        m,
                        "sb",
                        hostname,
                        0);

        if (r < 0)
                return log_error_errno(r, "Could not set transient hostname: %m");

        return 0;
}
