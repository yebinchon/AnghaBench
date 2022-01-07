
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int UnitActiveState ;
struct TYPE_13__ {int id; } ;
typedef TYPE_1__ Unit ;
struct TYPE_12__ {int (* stop ) (TYPE_1__*) ;} ;


 int EALREADY ;
 int EBADR ;
 scalar_t__ UNIT_IS_INACTIVE_OR_FAILED (int ) ;
 TYPE_10__* UNIT_VTABLE (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int log_unit_debug (TYPE_1__*,char*,int ,int ) ;
 int stub1 (TYPE_1__*) ;
 int unit_active_state (TYPE_1__*) ;
 int unit_add_to_dbus_queue (TYPE_1__*) ;
 TYPE_1__* unit_following (TYPE_1__*) ;

int unit_stop(Unit *u) {
        UnitActiveState state;
        Unit *following;

        assert(u);

        state = unit_active_state(u);
        if (UNIT_IS_INACTIVE_OR_FAILED(state))
                return -EALREADY;

        following = unit_following(u);
        if (following) {
                log_unit_debug(u, "Redirecting stop request from %s to %s.", u->id, following->id);
                return unit_stop(following);
        }

        if (!UNIT_VTABLE(u)->stop)
                return -EBADR;

        unit_add_to_dbus_queue(u);

        return UNIT_VTABLE(u)->stop(u);
}
