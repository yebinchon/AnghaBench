
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


typedef scalar_t__ UnitActiveState ;
struct TYPE_16__ {scalar_t__ load_state; int id; } ;
typedef TYPE_1__ Unit ;
struct TYPE_15__ {int (* reload ) (TYPE_1__*) ;} ;


 int EAGAIN ;
 int EBADR ;
 int EINVAL ;
 int ENOEXEC ;
 scalar_t__ UNIT_ACTIVE ;
 scalar_t__ UNIT_LOADED ;
 scalar_t__ UNIT_RELOADING ;
 TYPE_13__* UNIT_VTABLE (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int log_unit_debug (TYPE_1__*,char*,int ,int ) ;
 int log_unit_warning (TYPE_1__*,char*) ;
 int stub1 (TYPE_1__*) ;
 scalar_t__ unit_active_state (TYPE_1__*) ;
 int unit_add_to_dbus_queue (TYPE_1__*) ;
 int unit_can_reload (TYPE_1__*) ;
 TYPE_1__* unit_following (TYPE_1__*) ;
 int unit_notify (TYPE_1__*,scalar_t__,scalar_t__,int ) ;

int unit_reload(Unit *u) {
        UnitActiveState state;
        Unit *following;

        assert(u);

        if (u->load_state != UNIT_LOADED)
                return -EINVAL;

        if (!unit_can_reload(u))
                return -EBADR;

        state = unit_active_state(u);
        if (state == UNIT_RELOADING)
                return -EAGAIN;

        if (state != UNIT_ACTIVE) {
                log_unit_warning(u, "Unit cannot be reloaded because it is inactive.");
                return -ENOEXEC;
        }

        following = unit_following(u);
        if (following) {
                log_unit_debug(u, "Redirecting reload request from %s to %s.", u->id, following->id);
                return unit_reload(following);
        }

        unit_add_to_dbus_queue(u);

        if (!UNIT_VTABLE(u)->reload) {

                unit_notify(u, unit_active_state(u), unit_active_state(u), 0);
                return 0;
        }

        return UNIT_VTABLE(u)->reload(u);
}
