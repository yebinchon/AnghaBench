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
typedef  int /*<<< orphan*/  Transfer ;
struct TYPE_6__ {int /*<<< orphan*/  event; int /*<<< orphan*/  bus; int /*<<< orphan*/  polkit_registry; int /*<<< orphan*/  transfers; int /*<<< orphan*/  notify_fd; int /*<<< orphan*/  notify_event_source; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Manager *FUNC9(Manager *m) {
        Transfer *t;

        if (!m)
                return NULL;

        FUNC6(m->notify_event_source);
        FUNC4(m->notify_fd);

        while ((t = FUNC1(m->transfers)))
                FUNC8(t);

        FUNC2(m->transfers);

        FUNC0(m->polkit_registry);

        m->bus = FUNC5(m->bus);
        FUNC7(m->event);

        return FUNC3(m);
}