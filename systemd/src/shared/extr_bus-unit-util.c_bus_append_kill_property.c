
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;


 scalar_t__ STR_IN_SET (char const*,char*,char*,...) ;
 int bus_append_parse_boolean (int *,char const*,char const*) ;
 int bus_append_signal_from_string (int *,char const*,char const*) ;
 int bus_append_string (int *,char const*,char const*) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int bus_append_kill_property(sd_bus_message *m, const char *field, const char *eq) {
        if (streq(field, "KillMode"))
                return bus_append_string(m, field, eq);

        if (STR_IN_SET(field, "SendSIGHUP", "SendSIGKILL"))
                return bus_append_parse_boolean(m, field, eq);

        if (STR_IN_SET(field, "KillSignal", "RestartKillSignal", "FinalKillSignal", "WatchdogSignal"))
                return bus_append_signal_from_string(m, field, eq);

        return 0;
}
