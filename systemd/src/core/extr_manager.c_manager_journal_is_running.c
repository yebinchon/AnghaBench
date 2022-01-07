
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_4__ {int state; } ;
struct TYPE_3__ {scalar_t__ state; } ;
typedef int Manager ;


 int IN_SET (int ,int ,int ) ;
 int MANAGER_IS_SYSTEM (int *) ;
 scalar_t__ MANAGER_IS_TEST_RUN (int *) ;
 TYPE_2__* SERVICE (int *) ;
 int SERVICE_RELOAD ;
 int SERVICE_RUNNING ;
 TYPE_1__* SOCKET (int *) ;
 scalar_t__ SOCKET_RUNNING ;
 int SPECIAL_JOURNALD_SERVICE ;
 int SPECIAL_JOURNALD_SOCKET ;
 int assert (int *) ;
 int * manager_get_unit (int *,int ) ;

__attribute__((used)) static bool manager_journal_is_running(Manager *m) {
        Unit *u;

        assert(m);

        if (MANAGER_IS_TEST_RUN(m))
                return 0;


        if (!MANAGER_IS_SYSTEM(m))
                return 1;


        u = manager_get_unit(m, SPECIAL_JOURNALD_SOCKET);
        if (!u)
                return 0;
        if (SOCKET(u)->state != SOCKET_RUNNING)
                return 0;


        u = manager_get_unit(m, SPECIAL_JOURNALD_SERVICE);
        if (!u)
                return 0;
        if (!IN_SET(SERVICE(u)->state, SERVICE_RELOAD, SERVICE_RUNNING))
                return 0;

        return 1;
}
