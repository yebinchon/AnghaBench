
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_5__ {scalar_t__ state; void* clean_result; void* reload_result; void* result; } ;
typedef TYPE_1__ Mount ;


 TYPE_1__* MOUNT (int *) ;
 int MOUNT_DEAD ;
 scalar_t__ MOUNT_FAILED ;
 void* MOUNT_SUCCESS ;
 int assert (TYPE_1__*) ;
 int mount_set_state (TYPE_1__*,int ) ;

__attribute__((used)) static void mount_reset_failed(Unit *u) {
        Mount *m = MOUNT(u);

        assert(m);

        if (m->state == MOUNT_FAILED)
                mount_set_state(m, MOUNT_DEAD);

        m->result = MOUNT_SUCCESS;
        m->reload_result = MOUNT_SUCCESS;
        m->clean_result = MOUNT_SUCCESS;
}
