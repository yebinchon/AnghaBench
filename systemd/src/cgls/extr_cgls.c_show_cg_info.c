
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYSTEMD_CGROUP_CONTROLLER ;
 scalar_t__ cg_all_unified () ;
 char* empty_to_root (char const*) ;
 int fflush (int ) ;
 int printf (char*,char const*) ;
 int stdout ;
 int streq (char const*,int ) ;

__attribute__((used)) static void show_cg_info(const char *controller, const char *path) {

        if (cg_all_unified() == 0 && controller && !streq(controller, SYSTEMD_CGROUP_CONTROLLER))
                printf("Controller %s; ", controller);

        printf("Control group %s:\n", empty_to_root(path));
        fflush(stdout);
}
