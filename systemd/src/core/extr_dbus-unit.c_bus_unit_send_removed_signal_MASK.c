#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  id; int /*<<< orphan*/  bus_track; int /*<<< orphan*/  manager; scalar_t__ in_dbus_queue; int /*<<< orphan*/  sent_dbus_new_signal; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  send_removed_signal ; 

void FUNC4(Unit *u) {
        int r;
        FUNC0(u);

        if (!u->sent_dbus_new_signal || u->in_dbus_queue)
                FUNC2(u);

        if (!u->id)
                return;

        r = FUNC1(u->manager, u->bus_track, send_removed_signal, u);
        if (r < 0)
                FUNC3(u, r, "Failed to send unit remove signal for %s: %m", u->id);
}