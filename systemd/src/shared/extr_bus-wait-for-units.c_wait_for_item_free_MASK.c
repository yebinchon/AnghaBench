#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  clean_result; int /*<<< orphan*/  active_state; int /*<<< orphan*/  bus_path; int /*<<< orphan*/  slot_get_all; int /*<<< orphan*/  slot_properties_changed; TYPE_1__* parent; int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ WaitForItem ;
struct TYPE_8__ {TYPE_2__* current; int /*<<< orphan*/  items; scalar_t__ bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_WAIT_REFFED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (TYPE_2__*) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static WaitForItem *FUNC8(WaitForItem *item) {
        int r;

        if (!item)
                return NULL;

        if (item->parent) {
                if (FUNC0(item->flags, BUS_WAIT_REFFED) && item->bus_path && item->parent->bus) {
                        r = FUNC6(
                                        item->parent->bus,
                                        NULL,
                                        "org.freedesktop.systemd1",
                                        item->bus_path,
                                        "org.freedesktop.systemd1.Unit",
                                        "Unref",
                                        NULL,
                                        NULL,
                                        NULL);
                        if (r < 0)
                                FUNC4(r, "Failed to drop reference to unit %s, ignoring: %m", item->bus_path);
                }

                FUNC1(FUNC3(item->parent->items, item->bus_path) == item);

                if (item->parent->current == item)
                        item->parent->current = NULL;
        }

        FUNC7(item->slot_properties_changed);
        FUNC7(item->slot_get_all);

        FUNC2(item->bus_path);
        FUNC2(item->active_state);
        FUNC2(item->clean_result);

        return FUNC5(item);
}