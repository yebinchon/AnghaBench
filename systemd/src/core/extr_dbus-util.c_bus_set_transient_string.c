
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int UnitWriteFlags ;
typedef int Unit ;


 int UNIT_ESCAPE_SPECIFIERS ;
 int UNIT_WRITE_FLAGS_NOOP (int) ;
 int assert (char**) ;
 int empty_to_null (char const*) ;
 int free_and_strdup (char**,int ) ;
 int sd_bus_message_read (int *,char*,char const**) ;
 int strempty (char const*) ;
 int unit_write_settingf (int *,int,char const*,char*,char const*,int ) ;

int bus_set_transient_string(
                Unit *u,
                const char *name,
                char **p,
                sd_bus_message *message,
                UnitWriteFlags flags,
                sd_bus_error *error) {

        const char *v;
        int r;

        assert(p);

        r = sd_bus_message_read(message, "s", &v);
        if (r < 0)
                return r;

        if (!UNIT_WRITE_FLAGS_NOOP(flags)) {
                r = free_and_strdup(p, empty_to_null(v));
                if (r < 0)
                        return r;

                unit_write_settingf(u, flags|UNIT_ESCAPE_SPECIFIERS, name,
                                    "%s=%s", name, strempty(v));
        }

        return 1;
}
