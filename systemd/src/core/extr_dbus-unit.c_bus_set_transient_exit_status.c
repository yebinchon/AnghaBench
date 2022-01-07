
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int int32_t ;
typedef int UnitWriteFlags ;
typedef int Unit ;


 int SD_BUS_ERROR_INVALID_ARGS ;
 int UNIT_WRITE_FLAGS_NOOP (int ) ;
 int assert (int*) ;
 int sd_bus_error_setf (int *,int ,char*) ;
 int sd_bus_message_read (int *,char*,int*) ;
 int unit_write_settingf (int *,int ,char const*,char*,char const*,...) ;

__attribute__((used)) static int bus_set_transient_exit_status(
                Unit *u,
                const char *name,
                int *p,
                sd_bus_message *message,
                UnitWriteFlags flags,
                sd_bus_error *error) {

        int32_t k;
        int r;

        assert(p);

        r = sd_bus_message_read(message, "i", &k);
        if (r < 0)
                return r;

        if (k > 255)
                return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Exit status must be in range 0…255 or negative.");

        if (!UNIT_WRITE_FLAGS_NOOP(flags)) {
                *p = k < 0 ? -1 : k;

                if (k < 0)
                        unit_write_settingf(u, flags, name, "%s=", name);
                else
                        unit_write_settingf(u, flags, name, "%s=%i", name, k);
        }

        return 1;
}
