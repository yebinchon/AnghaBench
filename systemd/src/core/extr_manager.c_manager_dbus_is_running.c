
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_4__ {int state; int deserialized_state; } ;
struct TYPE_3__ {scalar_t__ deserialized_state; scalar_t__ state; } ;
typedef int Manager ;


 int IN_SET (int ,int ,int ) ;
 scalar_t__ MANAGER_IS_TEST_RUN (int *) ;
 TYPE_2__* SERVICE (int *) ;
 int SERVICE_RELOAD ;
 int SERVICE_RUNNING ;
 TYPE_1__* SOCKET (int *) ;
 scalar_t__ SOCKET_RUNNING ;
 int SPECIAL_DBUS_SERVICE ;
 int SPECIAL_DBUS_SOCKET ;
 int assert (int *) ;
 int * manager_get_unit (int *,int ) ;

__attribute__((used)) static bool manager_dbus_is_running(Manager *m, bool deserialized) {
        Unit *u;

        assert(m);





        if (MANAGER_IS_TEST_RUN(m))
                return 0;

        u = manager_get_unit(m, SPECIAL_DBUS_SOCKET);
        if (!u)
                return 0;
        if ((deserialized ? SOCKET(u)->deserialized_state : SOCKET(u)->state) != SOCKET_RUNNING)
                return 0;

        u = manager_get_unit(m, SPECIAL_DBUS_SERVICE);
        if (!u)
                return 0;
        if (!IN_SET((deserialized ? SERVICE(u)->deserialized_state : SERVICE(u)->state), SERVICE_RUNNING, SERVICE_RELOAD))
                return 0;

        return 1;
}
