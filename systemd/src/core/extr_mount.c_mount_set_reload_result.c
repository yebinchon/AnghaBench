
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ reload_result; } ;
typedef scalar_t__ MountResult ;
typedef TYPE_1__ Mount ;


 scalar_t__ MOUNT_SUCCESS ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static void mount_set_reload_result(Mount *m, MountResult result) {
        assert(m);


        if (m->reload_result != MOUNT_SUCCESS)
                return;

        m->reload_result = result;
}
