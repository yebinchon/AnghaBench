
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_4__ {int control_pid; } ;
typedef TYPE_1__ Mount ;


 TYPE_1__* MOUNT (int *) ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static int mount_control_pid(Unit *u) {
        Mount *m = MOUNT(u);

        assert(m);

        return m->control_pid;
}
