
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mount_monitor; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int log_error_errno (int,char*) ;
 int mnt_monitor_next_change (int ,int *,int *) ;

__attribute__((used)) static int drain_libmount(Manager *m) {
        bool rescan = 0;
        int r;

        assert(m);







        do {
                r = mnt_monitor_next_change(m->mount_monitor, ((void*)0), ((void*)0));
                if (r < 0)
                        return log_error_errno(r, "Failed to drain libmount events: %m");
                if (r == 0)
                        rescan = 1;
        } while (r == 0);

        return rescan;
}
