#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* pending_switch; TYPE_1__* active; } ;
struct TYPE_7__ {scalar_t__ vtnr; TYPE_4__* seat; struct TYPE_7__* user; } ;
typedef  TYPE_1__ Session ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 unsigned int FUNC4 (TYPE_1__*) ; 

int FUNC5(Session *s) {
        unsigned num_pending;

        FUNC0(s);
        FUNC0(s->user);

        if (!s->seat)
                return -EOPNOTSUPP;

        if (s->seat->active == s)
                return 0;

        /* on seats with VTs, we let VTs manage session-switching */
        if (FUNC3(s->seat)) {
                if (s->vtnr == 0)
                        return -EOPNOTSUPP;

                return FUNC1(s->vtnr);
        }

        /* On seats without VTs, we implement session-switching in logind. We
         * try to pause all session-devices and wait until the session
         * controller acknowledged them. Once all devices are asleep, we simply
         * switch the active session and be done.
         * We save the session we want to switch to in seat->pending_switch and
         * seat_complete_switch() will perform the final switch. */

        s->seat->pending_switch = s;

        /* if no devices are running, immediately perform the session switch */
        num_pending = FUNC4(s);
        if (!num_pending)
                FUNC2(s->seat);

        return 0;
}