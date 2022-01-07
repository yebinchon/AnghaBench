
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_8__ {int result; int state; } ;
typedef TYPE_1__ Path ;


 TYPE_1__* IN_SET (int ,int ,int ) ;
 TYPE_1__* PATH (int *) ;
 int PATH_DEAD ;
 int PATH_FAILED ;
 int PATH_FAILURE_START_LIMIT_HIT ;
 int PATH_SUCCESS ;
 int assert (TYPE_1__*) ;
 int path_enter_dead (TYPE_1__*,int ) ;
 int path_enter_waiting (TYPE_1__*,int,int) ;
 int path_mkdir (TYPE_1__*) ;
 int unit_acquire_invocation_id (int *) ;
 int unit_test_start_limit (int *) ;
 int unit_test_trigger_loaded (int *) ;

__attribute__((used)) static int path_start(Unit *u) {
        Path *p = PATH(u);
        int r;

        assert(p);
        assert(IN_SET(p->state, PATH_DEAD, PATH_FAILED));

        r = unit_test_trigger_loaded(u);
        if (r < 0)
                return r;

        r = unit_test_start_limit(u);
        if (r < 0) {
                path_enter_dead(p, PATH_FAILURE_START_LIMIT_HIT);
                return r;
        }

        r = unit_acquire_invocation_id(u);
        if (r < 0)
                return r;

        path_mkdir(p);

        p->result = PATH_SUCCESS;
        path_enter_waiting(p, 1, 1);

        return 1;
}
