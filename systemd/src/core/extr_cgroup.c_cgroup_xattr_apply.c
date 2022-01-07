
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cgroup_path; int invocation_id; int manager; } ;
typedef TYPE_1__ Unit ;


 int MANAGER_IS_SYSTEM (int ) ;
 int SD_ID128_STRING_MAX ;
 int SYSTEMD_CGROUP_CONTROLLER ;
 int assert (TYPE_1__*) ;
 int cg_set_xattr (int ,int ,char*,int ,int,int ) ;
 int log_unit_debug_errno (TYPE_1__*,int,char*,int ) ;
 scalar_t__ sd_id128_is_null (int ) ;
 int sd_id128_to_string (int ,char*) ;

__attribute__((used)) static void cgroup_xattr_apply(Unit *u) {
        char ids[SD_ID128_STRING_MAX];
        int r;

        assert(u);

        if (!MANAGER_IS_SYSTEM(u->manager))
                return;

        if (sd_id128_is_null(u->invocation_id))
                return;

        r = cg_set_xattr(SYSTEMD_CGROUP_CONTROLLER, u->cgroup_path,
                         "trusted.invocation_id",
                         sd_id128_to_string(u->invocation_id, ids), 32,
                         0);
        if (r < 0)
                log_unit_debug_errno(u, r, "Failed to set invocation ID on control group %s, ignoring: %m", u->cgroup_path);
}
