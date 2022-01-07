
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cgroup_path; } ;
typedef int Service ;


 int SYSTEMD_CGROUP_CONTROLLER ;
 TYPE_1__* UNIT (int *) ;
 int assert (int *) ;
 int cg_is_empty_recursive (int ,int ) ;

__attribute__((used)) static int cgroup_good(Service *s) {
        int r;

        assert(s);




        if (!UNIT(s)->cgroup_path)
                return 0;

        r = cg_is_empty_recursive(SYSTEMD_CGROUP_CONTROLLER, UNIT(s)->cgroup_path);
        if (r < 0)
                return r;

        return r == 0;
}
