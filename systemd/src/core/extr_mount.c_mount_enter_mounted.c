
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ result; } ;
typedef scalar_t__ MountResult ;
typedef TYPE_1__ Mount ;


 int MOUNT_MOUNTED ;
 scalar_t__ MOUNT_SUCCESS ;
 int assert (TYPE_1__*) ;
 int mount_set_state (TYPE_1__*,int ) ;

__attribute__((used)) static void mount_enter_mounted(Mount *m, MountResult f) {
        assert(m);

        if (m->result == MOUNT_SUCCESS)
                m->result = f;

        mount_set_state(m, MOUNT_MOUNTED);
}
