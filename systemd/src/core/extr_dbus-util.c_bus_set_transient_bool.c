
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int UnitWriteFlags ;
typedef int Unit ;


 int UNIT_WRITE_FLAGS_NOOP (int ) ;
 int assert (int*) ;
 int sd_bus_message_read (int *,char*,int*) ;
 int unit_write_settingf (int *,int ,char const*,char*,char const*,int ) ;
 int yes_no (int) ;

int bus_set_transient_bool(
                Unit *u,
                const char *name,
                bool *p,
                sd_bus_message *message,
                UnitWriteFlags flags,
                sd_bus_error *error) {

        int v, r;

        assert(p);

        r = sd_bus_message_read(message, "b", &v);
        if (r < 0)
                return r;

        if (!UNIT_WRITE_FLAGS_NOOP(flags)) {
                *p = v;
                unit_write_settingf(u, flags, name, "%s=%s", name, yes_no(v));
        }

        return 1;
}
