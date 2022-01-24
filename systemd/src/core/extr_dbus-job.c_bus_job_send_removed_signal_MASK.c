#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  id; int /*<<< orphan*/  bus_track; int /*<<< orphan*/  manager; int /*<<< orphan*/  unit; int /*<<< orphan*/  sent_dbus_new_signal; } ;
typedef  TYPE_1__ Job ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  send_removed_signal ; 

void FUNC5(Job *j) {
        int r;

        FUNC0(j);

        if (!j->sent_dbus_new_signal)
                FUNC2(j);

        /* Make sure that any change signal on the unit is reflected before we send out the change signal on the job */
        FUNC3(j->unit, true);

        r = FUNC1(j->manager, j->bus_track, send_removed_signal, j);
        if (r < 0)
                FUNC4(r, "Failed to send job remove signal for %u: %m", j->id);
}