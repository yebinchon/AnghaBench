
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_5__ {scalar_t__ state; int result; } ;
typedef TYPE_1__ Path ;


 TYPE_1__* PATH (int *) ;
 int PATH_DEAD ;
 scalar_t__ PATH_FAILED ;
 int PATH_SUCCESS ;
 int assert (TYPE_1__*) ;
 int path_set_state (TYPE_1__*,int ) ;

__attribute__((used)) static void path_reset_failed(Unit *u) {
        Path *p = PATH(u);

        assert(p);

        if (p->state == PATH_FAILED)
                path_set_state(p, PATH_DEAD);

        p->result = PATH_SUCCESS;
}
