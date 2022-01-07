
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rules; } ;
typedef TYPE_1__ Manager ;


 int arg_children_max ;
 int assert (TYPE_1__*) ;
 int manager_kill_workers (TYPE_1__*) ;
 int sd_notify (int,char*) ;
 int sd_notifyf (int,char*,int ) ;
 int udev_builtin_exit () ;
 int udev_rules_free (int ) ;

__attribute__((used)) static void manager_reload(Manager *manager) {

        assert(manager);

        sd_notify(0,
                  "RELOADING=1\n"
                  "STATUS=Flushing configuration...");

        manager_kill_workers(manager);
        manager->rules = udev_rules_free(manager->rules);
        udev_builtin_exit();

        sd_notifyf(0,
                   "READY=1\n"
                   "STATUS=Processing with %u children at max", arg_children_max);
}
