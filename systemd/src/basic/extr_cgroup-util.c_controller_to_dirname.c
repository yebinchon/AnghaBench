
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYSTEMD_CGROUP_CONTROLLER ;
 char* SYSTEMD_CGROUP_CONTROLLER_HYBRID ;
 char* SYSTEMD_CGROUP_CONTROLLER_LEGACY ;
 int assert (char const*) ;
 scalar_t__ cg_hybrid_unified () ;
 char* startswith (char const*,char*) ;
 scalar_t__ streq (char const*,int ) ;

__attribute__((used)) static const char *controller_to_dirname(const char *controller) {
        const char *e;

        assert(controller);






        if (streq(controller, SYSTEMD_CGROUP_CONTROLLER)) {
                if (cg_hybrid_unified() > 0)
                        controller = SYSTEMD_CGROUP_CONTROLLER_HYBRID;
                else
                        controller = SYSTEMD_CGROUP_CONTROLLER_LEGACY;
        }

        e = startswith(controller, "name=");
        if (e)
                return e;

        return controller;
}
