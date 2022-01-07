
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef char* (* cg_migrate_callback_t ) (int ,void*) ;
typedef int CGroupMask ;
typedef scalar_t__ CGroupController ;


 int CGROUP_CONTROLLER_TO_MASK (scalar_t__) ;
 int CGROUP_MASK_EXTEND_JOINED (int ) ;
 int CGROUP_MASK_V1 ;
 scalar_t__ FLAGS_SET (int ,int ) ;
 int SYSTEMD_CGROUP_CONTROLLER ;
 scalar_t__ _CGROUP_CONTROLLER_MAX ;
 int cg_all_unified () ;
 int cg_attach (int ,char const*,int ) ;
 int cg_attach_fallback (int ,char const*,int ) ;
 int cgroup_controller_to_string (scalar_t__) ;

int cg_attach_everywhere(CGroupMask supported, const char *path, pid_t pid, cg_migrate_callback_t path_callback, void *userdata) {
        CGroupController c;
        CGroupMask done;
        int r;

        r = cg_attach(SYSTEMD_CGROUP_CONTROLLER, path, pid);
        if (r < 0)
                return r;

        r = cg_all_unified();
        if (r < 0)
                return r;
        if (r > 0)
                return 0;

        supported &= CGROUP_MASK_V1;
        done = 0;

        for (c = 0; c < _CGROUP_CONTROLLER_MAX; c++) {
                CGroupMask bit = CGROUP_CONTROLLER_TO_MASK(c);
                const char *p = ((void*)0);

                if (!FLAGS_SET(supported, bit))
                        continue;

                if (FLAGS_SET(done, bit))
                        continue;

                if (path_callback)
                        p = path_callback(bit, userdata);
                if (!p)
                        p = path;

                (void) cg_attach_fallback(cgroup_controller_to_string(c), p, pid);
                done |= CGROUP_MASK_EXTEND_JOINED(bit);
        }

        return 0;
}
