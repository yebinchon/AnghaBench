
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int EOPNOTSUPP ;
 int F_OK ;
 int SYSTEMD_CGROUP_CONTROLLER ;
 int assert (char const*) ;
 int cg_all_unified () ;
 int cg_controller_is_valid (char const*) ;
 char* controller_to_dirname (char const*) ;
 int errno ;
 scalar_t__ laccess (char const*,int ) ;
 scalar_t__ startswith (char const*,char*) ;
 scalar_t__ streq (char const*,int ) ;
 char* strjoina (char*,char const*) ;

__attribute__((used)) static int controller_is_accessible(const char *controller) {
        int r;

        assert(controller);






        if (!cg_controller_is_valid(controller))
                return -EINVAL;

        r = cg_all_unified();
        if (r < 0)
                return r;
        if (r > 0) {



                if (streq(controller, SYSTEMD_CGROUP_CONTROLLER))
                        return 0;

                if (startswith(controller, "name="))
                        return -EOPNOTSUPP;

        } else {
                const char *cc, *dn;

                dn = controller_to_dirname(controller);
                cc = strjoina("/sys/fs/cgroup/", dn);

                if (laccess(cc, F_OK) < 0)
                        return -errno;
        }

        return 0;
}
