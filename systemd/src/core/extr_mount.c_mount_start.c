
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_8__ {scalar_t__ state; } ;
typedef TYPE_1__ Mount ;


 int EAGAIN ;
 TYPE_1__* IN_SET (scalar_t__,int ,int ,...) ;
 TYPE_1__* MOUNT (int *) ;
 int MOUNT_CLEANING ;
 int MOUNT_DEAD ;
 int MOUNT_FAILED ;
 int MOUNT_FAILURE_START_LIMIT_HIT ;
 scalar_t__ MOUNT_MOUNTING ;
 int MOUNT_UNMOUNTING ;
 int MOUNT_UNMOUNTING_SIGKILL ;
 int MOUNT_UNMOUNTING_SIGTERM ;
 int assert (TYPE_1__*) ;
 int mount_cycle_clear (TYPE_1__*) ;
 int mount_enter_dead (TYPE_1__*,int ) ;
 int mount_enter_mounting (TYPE_1__*) ;
 int unit_acquire_invocation_id (int *) ;
 int unit_test_start_limit (int *) ;

__attribute__((used)) static int mount_start(Unit *u) {
        Mount *m = MOUNT(u);
        int r;

        assert(m);



        if (IN_SET(m->state,
                   MOUNT_UNMOUNTING,
                   MOUNT_UNMOUNTING_SIGTERM,
                   MOUNT_UNMOUNTING_SIGKILL,
                   MOUNT_CLEANING))
                return -EAGAIN;


        if (m->state == MOUNT_MOUNTING)
                return 0;

        assert(IN_SET(m->state, MOUNT_DEAD, MOUNT_FAILED));

        r = unit_test_start_limit(u);
        if (r < 0) {
                mount_enter_dead(m, MOUNT_FAILURE_START_LIMIT_HIT);
                return r;
        }

        r = unit_acquire_invocation_id(u);
        if (r < 0)
                return r;

        mount_cycle_clear(m);
        mount_enter_mounting(m);

        return 1;
}
