
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


typedef scalar_t__ UnitActiveState ;
struct TYPE_18__ {scalar_t__ load_state; int id; int type; int inactive_enter_timestamp; } ;
typedef TYPE_1__ Unit ;
struct TYPE_17__ {int (* start ) (TYPE_1__*) ;scalar_t__ once_only; } ;


 int EAGAIN ;
 int EALREADY ;
 int EBADR ;
 int ECOMM ;
 int EINVAL ;
 int ENOLINK ;
 int EOPNOTSUPP ;
 int EPROTO ;
 int ESTALE ;
 int SYNTHETIC_ERRNO (int ) ;
 scalar_t__ UNIT_ACTIVATING ;
 scalar_t__ UNIT_IS_ACTIVE_OR_RELOADING (scalar_t__) ;
 scalar_t__ UNIT_LOADED ;
 scalar_t__ UNIT_MAINTENANCE ;
 TYPE_15__* UNIT_VTABLE (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 scalar_t__ dual_timestamp_is_set (int *) ;
 int log_unit_debug (TYPE_1__*,char*,int ,int ) ;
 int log_unit_debug_errno (TYPE_1__*,int ,char*) ;
 int log_unit_notice_errno (TYPE_1__*,int ,char*) ;
 int stub1 (TYPE_1__*) ;
 scalar_t__ unit_active_state (TYPE_1__*) ;
 int unit_add_to_dbus_queue (TYPE_1__*) ;
 TYPE_1__* unit_following (TYPE_1__*) ;
 int unit_test_assert (TYPE_1__*) ;
 int unit_test_condition (TYPE_1__*) ;
 int unit_type_supported (int ) ;
 int unit_verify_deps (TYPE_1__*) ;

int unit_start(Unit *u) {
        UnitActiveState state;
        Unit *following;

        assert(u);




        state = unit_active_state(u);
        if (UNIT_IS_ACTIVE_OR_RELOADING(state))
                return -EALREADY;
        if (state == UNIT_MAINTENANCE)
                return -EAGAIN;


        if (u->load_state != UNIT_LOADED)
                return -EINVAL;


        if (UNIT_VTABLE(u)->once_only && dual_timestamp_is_set(&u->inactive_enter_timestamp))
                return -ESTALE;




        if (state != UNIT_ACTIVATING &&
            !unit_test_condition(u))
                return log_unit_debug_errno(u, SYNTHETIC_ERRNO(ECOMM), "Starting requested but condition failed. Not starting unit.");


        if (state != UNIT_ACTIVATING &&
            !unit_test_assert(u))
                return log_unit_notice_errno(u, SYNTHETIC_ERRNO(EPROTO), "Starting requested but asserts failed.");





        if (!unit_type_supported(u->type))
                return -EOPNOTSUPP;




        if (!unit_verify_deps(u))
                return -ENOLINK;


        following = unit_following(u);
        if (following) {
                log_unit_debug(u, "Redirecting start request from %s to %s.", u->id, following->id);
                return unit_start(following);
        }


        if (!UNIT_VTABLE(u)->start)
                return -EBADR;





        unit_add_to_dbus_queue(u);

        return UNIT_VTABLE(u)->start(u);
}
