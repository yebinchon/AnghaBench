
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_6__ {int state; } ;
typedef TYPE_1__ Path ;


 TYPE_1__* IN_SET (int ,int ,int ) ;
 TYPE_1__* PATH (int *) ;
 int PATH_RUNNING ;
 int PATH_SUCCESS ;
 int PATH_WAITING ;
 int assert (TYPE_1__*) ;
 int path_enter_dead (TYPE_1__*,int ) ;

__attribute__((used)) static int path_stop(Unit *u) {
        Path *p = PATH(u);

        assert(p);
        assert(IN_SET(p->state, PATH_WAITING, PATH_RUNNING));

        path_enter_dead(p, PATH_SUCCESS);
        return 1;
}
