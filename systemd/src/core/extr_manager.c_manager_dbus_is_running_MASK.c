#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_4__ {int /*<<< orphan*/  state; int /*<<< orphan*/  deserialized_state; } ;
struct TYPE_3__ {scalar_t__ deserialized_state; scalar_t__ state; } ;
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SERVICE_RELOAD ; 
 int /*<<< orphan*/  SERVICE_RUNNING ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ SOCKET_RUNNING ; 
 int /*<<< orphan*/  SPECIAL_DBUS_SERVICE ; 
 int /*<<< orphan*/  SPECIAL_DBUS_SOCKET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(Manager *m, bool deserialized) {
        Unit *u;

        FUNC4(m);

        /* This checks whether the dbus instance we are supposed to expose our APIs on is up. We check both the socket
         * and the service unit. If the 'deserialized' parameter is true we'll check the deserialized state of the unit
         * rather than the current one. */

        if (FUNC1(m))
                return false;

        u = FUNC5(m, SPECIAL_DBUS_SOCKET);
        if (!u)
                return false;
        if ((deserialized ? FUNC3(u)->deserialized_state : FUNC3(u)->state) != SOCKET_RUNNING)
                return false;

        u = FUNC5(m, SPECIAL_DBUS_SERVICE);
        if (!u)
                return false;
        if (!FUNC0((deserialized ? FUNC2(u)->deserialized_state : FUNC2(u)->state), SERVICE_RUNNING, SERVICE_RELOAD))
                return false;

        return true;
}