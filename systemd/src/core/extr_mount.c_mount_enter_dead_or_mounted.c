
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ from_proc_self_mountinfo; } ;
typedef int MountResult ;
typedef TYPE_1__ Mount ;


 int assert (TYPE_1__*) ;
 int mount_enter_dead (TYPE_1__*,int ) ;
 int mount_enter_mounted (TYPE_1__*,int ) ;

__attribute__((used)) static void mount_enter_dead_or_mounted(Mount *m, MountResult f) {
        assert(m);





        if (m->from_proc_self_mountinfo)
                mount_enter_mounted(m, f);
        else
                mount_enter_dead(m, f);
}
