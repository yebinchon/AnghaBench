
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_6__ {int state; } ;
typedef TYPE_1__ Service ;


 TYPE_1__* IN_SET (int ,int ,int ) ;
 TYPE_1__* SERVICE (int *) ;
 int SERVICE_EXITED ;
 int SERVICE_RUNNING ;
 int assert (TYPE_1__*) ;
 int service_enter_reload (TYPE_1__*) ;

__attribute__((used)) static int service_reload(Unit *u) {
        Service *s = SERVICE(u);

        assert(s);

        assert(IN_SET(s->state, SERVICE_RUNNING, SERVICE_EXITED));

        service_enter_reload(s);
        return 1;
}
