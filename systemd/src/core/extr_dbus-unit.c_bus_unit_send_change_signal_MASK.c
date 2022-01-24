#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int in_dbus_queue; int sent_dbus_new_signal; int /*<<< orphan*/  id; int /*<<< orphan*/  bus_track; TYPE_4__* manager; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_9__ {int /*<<< orphan*/  dbus_unit_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  dbus_queue ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  send_changed_signal ; 
 int /*<<< orphan*/  send_new_signal ; 

void FUNC4(Unit *u) {
        int r;
        FUNC1(u);

        if (u->in_dbus_queue) {
                FUNC0(dbus_queue, u->manager->dbus_unit_queue, u);
                u->in_dbus_queue = false;
        }

        if (!u->id)
                return;

        r = FUNC2(u->manager, u->bus_track, u->sent_dbus_new_signal ? send_changed_signal : send_new_signal, u);
        if (r < 0)
                FUNC3(u, r, "Failed to send unit change signal for %s: %m", u->id);

        u->sent_dbus_new_signal = true;
}