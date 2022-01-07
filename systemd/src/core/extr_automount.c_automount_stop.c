
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_6__ {int state; } ;
typedef TYPE_1__ Automount ;


 TYPE_1__* AUTOMOUNT (int *) ;
 int AUTOMOUNT_RUNNING ;
 int AUTOMOUNT_SUCCESS ;
 int AUTOMOUNT_WAITING ;
 TYPE_1__* IN_SET (int ,int ,int ) ;
 int assert (TYPE_1__*) ;
 int automount_enter_dead (TYPE_1__*,int ) ;

__attribute__((used)) static int automount_stop(Unit *u) {
        Automount *a = AUTOMOUNT(u);

        assert(a);
        assert(IN_SET(a->state, AUTOMOUNT_WAITING, AUTOMOUNT_RUNNING));

        automount_enter_dead(a, AUTOMOUNT_SUCCESS);
        return 1;
}
