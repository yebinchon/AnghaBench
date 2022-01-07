
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const sd_bus_message ;
typedef int sd_bus_error ;
typedef int UnitWriteFlags ;
typedef char const Unit ;


 int UNIT_ESCAPE_SPECIFIERS ;
 int UNIT_WRITE_FLAGS_NOOP (int) ;
 int assert (char const*) ;
 int sd_bus_message_read (char const*,char*,char const**) ;
 scalar_t__ streq (char const*,char*) ;
 int unit_set_description (char const*,char const*) ;
 int unit_write_settingf (char const*,int,char const*,char*,char const*) ;

__attribute__((used)) static int bus_unit_set_live_property(
                Unit *u,
                const char *name,
                sd_bus_message *message,
                UnitWriteFlags flags,
                sd_bus_error *error) {

        int r;

        assert(u);
        assert(name);
        assert(message);




        if (streq(name, "Description")) {
                const char *d;

                r = sd_bus_message_read(message, "s", &d);
                if (r < 0)
                        return r;

                if (!UNIT_WRITE_FLAGS_NOOP(flags)) {
                        r = unit_set_description(u, d);
                        if (r < 0)
                                return r;

                        unit_write_settingf(u, flags|UNIT_ESCAPE_SPECIFIERS, name, "Description=%s", d);
                }

                return 1;
        }

        return 0;
}
