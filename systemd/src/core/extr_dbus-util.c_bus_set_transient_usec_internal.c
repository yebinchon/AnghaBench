
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int uint64_t ;
typedef int ts ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int UnitWriteFlags ;
typedef int Unit ;


 int FORMAT_TIMESPAN_MAX ;
 int UNIT_WRITE_FLAGS_NOOP (int ) ;
 int USEC_INFINITY ;
 int USEC_PER_MSEC ;
 int assert (int *) ;
 int format_timespan (char*,int,int ,int ) ;
 int sd_bus_message_read (int *,char*,int *) ;
 scalar_t__ strlen (char const*) ;
 char* strndupa (char const*,scalar_t__) ;
 int unit_write_settingf (int *,int ,char const*,char*,char*,int ) ;

int bus_set_transient_usec_internal(
                Unit *u,
                const char *name,
                usec_t *p,
                bool fix_0,
                sd_bus_message *message,
                UnitWriteFlags flags,
                sd_bus_error *error) {

        uint64_t v;
        int r;

        assert(p);

        r = sd_bus_message_read(message, "t", &v);
        if (r < 0)
                return r;

        if (!UNIT_WRITE_FLAGS_NOOP(flags)) {
                char *n, ts[FORMAT_TIMESPAN_MAX];

                if (fix_0)
                        *p = v != 0 ? v: USEC_INFINITY;
                else
                        *p = v;

                n = strndupa(name, strlen(name) - 4);
                unit_write_settingf(u, flags, name, "%sSec=%s", n,
                                    format_timespan(ts, sizeof(ts), v, USEC_PER_MSEC));
        }

        return 1;
}
