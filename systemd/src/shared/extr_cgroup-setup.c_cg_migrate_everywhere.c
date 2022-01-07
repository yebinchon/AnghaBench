
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* (* cg_migrate_callback_t ) (int ,void*) ;
typedef int CGroupMask ;
typedef scalar_t__ CGroupController ;


 int CGROUP_CONTROLLER_TO_MASK (scalar_t__) ;
 int CGROUP_MASK_EXTEND_JOINED (int ) ;
 int CGROUP_MASK_V1 ;
 int CGROUP_REMOVE ;
 scalar_t__ FLAGS_SET (int ,int ) ;
 int SYSTEMD_CGROUP_CONTROLLER ;
 scalar_t__ _CGROUP_CONTROLLER_MAX ;
 int cg_all_unified () ;
 int cg_migrate_recursive (int ,char const*,int ,char const*,int ) ;
 int cg_migrate_recursive_fallback (int ,char const*,int ,char const*,int ) ;
 int cgroup_controller_to_string (scalar_t__) ;
 int path_equal (char const*,char const*) ;

int cg_migrate_everywhere(CGroupMask supported, const char *from, const char *to, cg_migrate_callback_t to_callback, void *userdata) {
        CGroupController c;
        CGroupMask done;
        int r = 0, q;

        if (!path_equal(from, to)) {
                r = cg_migrate_recursive(SYSTEMD_CGROUP_CONTROLLER, from, SYSTEMD_CGROUP_CONTROLLER, to, CGROUP_REMOVE);
                if (r < 0)
                        return r;
        }

        q = cg_all_unified();
        if (q < 0)
                return q;
        if (q > 0)
                return r;

        supported &= CGROUP_MASK_V1;
        done = 0;

        for (c = 0; c < _CGROUP_CONTROLLER_MAX; c++) {
                CGroupMask bit = CGROUP_CONTROLLER_TO_MASK(c);
                const char *p = ((void*)0);

                if (!FLAGS_SET(supported, bit))
                        continue;

                if (FLAGS_SET(done, bit))
                        continue;

                if (to_callback)
                        p = to_callback(bit, userdata);
                if (!p)
                        p = to;

                (void) cg_migrate_recursive_fallback(SYSTEMD_CGROUP_CONTROLLER, to, cgroup_controller_to_string(c), p, 0);
                done |= CGROUP_MASK_EXTEND_JOINED(bit);
        }

        return r;
}
