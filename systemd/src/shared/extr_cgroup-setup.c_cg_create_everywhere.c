
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CGroupMask ;
typedef scalar_t__ CGroupController ;


 int CGROUP_CONTROLLER_TO_MASK (scalar_t__) ;
 int CGROUP_MASK_EXTEND_JOINED (int ) ;
 int CGROUP_MASK_V1 ;
 scalar_t__ FLAGS_SET (int ,int ) ;
 char const* SYSTEMD_CGROUP_CONTROLLER ;
 scalar_t__ _CGROUP_CONTROLLER_MAX ;
 int cg_all_unified () ;
 int cg_create (char const*,char const*) ;
 int cg_trim (char const*,char const*,int) ;
 char* cgroup_controller_to_string (scalar_t__) ;

int cg_create_everywhere(CGroupMask supported, CGroupMask mask, const char *path) {
        CGroupController c;
        CGroupMask done;
        bool created;
        int r;
        r = cg_create(SYSTEMD_CGROUP_CONTROLLER, path);
        if (r < 0)
                return r;
        created = r;


        r = cg_all_unified();
        if (r < 0)
                return r;
        if (r > 0)
                return created;

        supported &= CGROUP_MASK_V1;
        mask = CGROUP_MASK_EXTEND_JOINED(mask);
        done = 0;


        for (c = 0; c < _CGROUP_CONTROLLER_MAX; c++) {
                CGroupMask bit = CGROUP_CONTROLLER_TO_MASK(c);
                const char *n;

                if (!FLAGS_SET(supported, bit))
                        continue;

                if (FLAGS_SET(done, bit))
                        continue;

                n = cgroup_controller_to_string(c);
                if (FLAGS_SET(mask, bit))
                        (void) cg_create(n, path);
                else
                        (void) cg_trim(n, path, 1);

                done |= CGROUP_MASK_EXTEND_JOINED(bit);
        }

        return created;
}
