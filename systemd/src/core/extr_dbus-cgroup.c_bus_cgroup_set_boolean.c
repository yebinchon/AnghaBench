
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int UnitWriteFlags ;
typedef int Unit ;
typedef int CGroupMask ;


 int UNIT_WRITE_FLAGS_NOOP (int ) ;
 int assert (int*) ;
 int sd_bus_message_read (int *,char*,int*) ;
 int unit_invalidate_cgroup (int *,int ) ;
 int unit_write_settingf (int *,int ,char const*,char*,char const*,int ) ;
 int yes_no (int) ;

__attribute__((used)) static int bus_cgroup_set_boolean(
                Unit *u,
                const char *name,
                bool *p,
                CGroupMask mask,
                sd_bus_message *message,
                UnitWriteFlags flags,
                sd_bus_error *error) {

        int b, r;

        assert(p);

        r = sd_bus_message_read(message, "b", &b);
        if (r < 0)
                return r;

        if (!UNIT_WRITE_FLAGS_NOOP(flags)) {
                *p = b;
                unit_invalidate_cgroup(u, mask);
                unit_write_settingf(u, flags, name, "%s=%s", name, yes_no(b));
        }

        return 1;
}
