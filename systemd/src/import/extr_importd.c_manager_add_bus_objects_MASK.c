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
struct TYPE_7__ {int /*<<< orphan*/  event; int /*<<< orphan*/  bus; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int,char*) ; 
 int /*<<< orphan*/  manager_vtable ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  transfer_node_enumerator ; 
 int /*<<< orphan*/  transfer_object_find ; 
 int /*<<< orphan*/  transfer_vtable ; 

__attribute__((used)) static int FUNC7(Manager *m) {
        int r;

        FUNC0(m);

        r = FUNC4(m->bus, NULL, "/org/freedesktop/import1", "org.freedesktop.import1.Manager", manager_vtable, m);
        if (r < 0)
                return FUNC1(r, "Failed to register object: %m");

        r = FUNC2(m->bus, NULL, "/org/freedesktop/import1/transfer", "org.freedesktop.import1.Transfer", transfer_vtable, transfer_object_find, m);
        if (r < 0)
                return FUNC1(r, "Failed to register object: %m");

        r = FUNC3(m->bus, NULL, "/org/freedesktop/import1/transfer", transfer_node_enumerator, m);
        if (r < 0)
                return FUNC1(r, "Failed to add transfer enumerator: %m");

        r = FUNC6(m->bus, NULL, "org.freedesktop.import1", 0, NULL, NULL);
        if (r < 0)
                return FUNC1(r, "Failed to request name: %m");

        r = FUNC5(m->bus, m->event, 0);
        if (r < 0)
                return FUNC1(r, "Failed to attach bus to event loop: %m");

        return 0;
}