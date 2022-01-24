#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* unit; int /*<<< orphan*/  sent_dbus_new_signal; int /*<<< orphan*/  in_dbus_queue; } ;
struct TYPE_6__ {int /*<<< orphan*/  manager; } ;
typedef  TYPE_2__ Job ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3(Job *j, bool including_new) {
        FUNC1(j);

        if (!j->in_dbus_queue)
                return;

        if (!j->sent_dbus_new_signal && !including_new)
                return;

        if (FUNC0(j->unit->manager))
                return;

        FUNC2(j);
}