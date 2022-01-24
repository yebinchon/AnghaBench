#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_15__ ;

/* Type definitions */
typedef  scalar_t__ UnitActiveState ;
struct TYPE_18__ {scalar_t__ load_state; int /*<<< orphan*/  id; int /*<<< orphan*/  type; int /*<<< orphan*/  inactive_enter_timestamp; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_17__ {int (* start ) (TYPE_1__*) ;scalar_t__ once_only; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EALREADY ; 
 int EBADR ; 
 int /*<<< orphan*/  ECOMM ; 
 int EINVAL ; 
 int ENOLINK ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  EPROTO ; 
 int ESTALE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNIT_ACTIVATING ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ UNIT_LOADED ; 
 scalar_t__ UNIT_MAINTENANCE ; 
 TYPE_15__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 TYPE_1__* FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

int FUNC16(Unit *u) {
        UnitActiveState state;
        Unit *following;

        FUNC3(u);

        /* If this is already started, then this will succeed. Note that this will even succeed if this unit
         * is not startable by the user. This is relied on to detect when we need to wait for units and when
         * waiting is finished. */
        state = FUNC9(u);
        if (FUNC1(state))
                return -EALREADY;
        if (state == UNIT_MAINTENANCE)
                return -EAGAIN;

        /* Units that aren't loaded cannot be started */
        if (u->load_state != UNIT_LOADED)
                return -EINVAL;

        /* Refuse starting scope units more than once */
        if (FUNC2(u)->once_only && FUNC4(&u->inactive_enter_timestamp))
                return -ESTALE;

        /* If the conditions failed, don't do anything at all. If we already are activating this call might
         * still be useful to speed up activation in case there is some hold-off time, but we don't want to
         * recheck the condition in that case. */
        if (state != UNIT_ACTIVATING &&
            !FUNC13(u))
                return FUNC6(u, FUNC0(ECOMM), "Starting requested but condition failed. Not starting unit.");

        /* If the asserts failed, fail the entire job */
        if (state != UNIT_ACTIVATING &&
            !FUNC12(u))
                return FUNC7(u, FUNC0(EPROTO), "Starting requested but asserts failed.");

        /* Units of types that aren't supported cannot be started. Note that we do this test only after the
         * condition checks, so that we rather return condition check errors (which are usually not
         * considered a true failure) than "not supported" errors (which are considered a failure).
         */
        if (!FUNC14(u->type))
                return -EOPNOTSUPP;

        /* Let's make sure that the deps really are in order before we start this. Normally the job engine
         * should have taken care of this already, but let's check this here again. After all, our
         * dependencies might not be in effect anymore, due to a reload or due to a failed condition. */
        if (!FUNC15(u))
                return -ENOLINK;

        /* Forward to the main object, if we aren't it. */
        following = FUNC11(u);
        if (following) {
                FUNC5(u, "Redirecting start request from %s to %s.", u->id, following->id);
                return FUNC16(following);
        }

        /* If it is stopped, but we cannot start it, then fail */
        if (!FUNC2(u)->start)
                return -EBADR;

        /* We don't suppress calls to ->start() here when we are already starting, to allow this request to
         * be used as a "hurry up" call, for example when the unit is in some "auto restart" state where it
         * waits for a holdoff timer to elapse before it will start again. */

        FUNC10(u);

        return FUNC2(u)->start(u);
}