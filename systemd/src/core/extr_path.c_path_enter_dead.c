
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ result; } ;
typedef scalar_t__ PathResult ;
typedef TYPE_1__ Path ;


 int PATH_DEAD ;
 int PATH_FAILED ;
 scalar_t__ PATH_SUCCESS ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int path_result_to_string (scalar_t__) ;
 int path_set_state (TYPE_1__*,int ) ;
 int unit_log_result (int ,int,int ) ;

__attribute__((used)) static void path_enter_dead(Path *p, PathResult f) {
        assert(p);

        if (p->result == PATH_SUCCESS)
                p->result = f;

        unit_log_result(UNIT(p), p->result == PATH_SUCCESS, path_result_to_string(p->result));
        path_set_state(p, p->result != PATH_SUCCESS ? PATH_FAILED : PATH_DEAD);
}
