
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;


 int bus_append_parse_sec_rename (int *,char const*,char const*) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int bus_append_scope_property(sd_bus_message *m, const char *field, const char *eq) {
        if (streq(field, "RuntimeMaxSec"))

                return bus_append_parse_sec_rename(m, field, eq);

        if (streq(field, "TimeoutStopSec"))

                return bus_append_parse_sec_rename(m, field, eq);

        return 0;
}
