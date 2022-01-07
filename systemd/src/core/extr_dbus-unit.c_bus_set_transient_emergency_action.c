
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int UnitWriteFlags ;
struct TYPE_4__ {int manager; } ;
typedef TYPE_1__ Unit ;
typedef int EmergencyAction ;


 int EOPNOTSUPP ;
 int MANAGER_IS_SYSTEM (int ) ;
 int SD_BUS_ERROR_INVALID_ARGS ;
 int UNIT_WRITE_FLAGS_NOOP (int ) ;
 int assert (int *) ;
 int parse_emergency_action (char const*,int,int *) ;
 int sd_bus_error_setf (int *,int ,char*,char const*,char const*) ;
 int sd_bus_message_read (int *,char*,char const**) ;
 int unit_write_settingf (TYPE_1__*,int ,char const*,char*,char const*,char const*) ;

__attribute__((used)) static int bus_set_transient_emergency_action(
                Unit *u,
                const char *name,
                EmergencyAction *p,
                sd_bus_message *message,
                UnitWriteFlags flags,
                sd_bus_error *error) {

        const char *s;
        EmergencyAction v;
        int r;
        bool system;

        assert(p);

        r = sd_bus_message_read(message, "s", &s);
        if (r < 0)
                return r;

        system = MANAGER_IS_SYSTEM(u->manager);
        r = parse_emergency_action(s, system, &v);
        if (r < 0)
                return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS,
                                         r == -EOPNOTSUPP ? "%s setting invalid for manager type: %s"
                                                          : "Invalid %s setting: %s",
                                         name, s);

        if (!UNIT_WRITE_FLAGS_NOOP(flags)) {
                *p = v;
                unit_write_settingf(u, flags, name,
                                    "%s=%s", name, s);
        }

        return 1;
}
