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
struct TYPE_6__ {int /*<<< orphan*/  bus; int /*<<< orphan*/  event; int /*<<< orphan*/  resolve; int /*<<< orphan*/  network_monitor; int /*<<< orphan*/  network_event_source; int /*<<< orphan*/  event_retry; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  SERVER_FALLBACK ; 
 int /*<<< orphan*/  SERVER_LINK ; 
 int /*<<< orphan*/  SERVER_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(Manager *m) {
        if (!m)
                return;

        FUNC1(m);
        FUNC2(m, SERVER_SYSTEM);
        FUNC2(m, SERVER_LINK);
        FUNC2(m, SERVER_FALLBACK);

        FUNC4(m->event_retry);

        FUNC4(m->network_event_source);
        FUNC6(m->network_monitor);

        FUNC7(m->resolve);
        FUNC5(m->event);

        FUNC3(m->bus);

        FUNC0(m);
}