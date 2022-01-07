
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_7__ {int result; int where; int state; } ;
typedef TYPE_1__ Automount ;


 TYPE_1__* AUTOMOUNT (int *) ;
 int AUTOMOUNT_DEAD ;
 int AUTOMOUNT_FAILED ;
 int AUTOMOUNT_FAILURE_START_LIMIT_HIT ;
 int AUTOMOUNT_SUCCESS ;
 int EEXIST ;
 TYPE_1__* IN_SET (int ,int ,int ) ;
 int assert (TYPE_1__*) ;
 int automount_enter_dead (TYPE_1__*,int ) ;
 int automount_enter_waiting (TYPE_1__*) ;
 int log_unit_error (int *,char*,int ) ;
 scalar_t__ path_is_mount_point (int ,int *,int ) ;
 int unit_acquire_invocation_id (int *) ;
 int unit_test_start_limit (int *) ;
 int unit_test_trigger_loaded (int *) ;

__attribute__((used)) static int automount_start(Unit *u) {
        Automount *a = AUTOMOUNT(u);
        int r;

        assert(a);
        assert(IN_SET(a->state, AUTOMOUNT_DEAD, AUTOMOUNT_FAILED));

        if (path_is_mount_point(a->where, ((void*)0), 0) > 0) {
                log_unit_error(u, "Path %s is already a mount point, refusing start.", a->where);
                return -EEXIST;
        }

        r = unit_test_trigger_loaded(u);
        if (r < 0)
                return r;

        r = unit_test_start_limit(u);
        if (r < 0) {
                automount_enter_dead(a, AUTOMOUNT_FAILURE_START_LIMIT_HIT);
                return r;
        }

        r = unit_acquire_invocation_id(u);
        if (r < 0)
                return r;

        a->result = AUTOMOUNT_SUCCESS;
        automount_enter_waiting(a);
        return 1;
}
