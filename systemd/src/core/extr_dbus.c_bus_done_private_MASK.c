#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_bus ;
struct TYPE_5__ {int /*<<< orphan*/  private_listen_fd; int /*<<< orphan*/  private_listen_event_source; int /*<<< orphan*/  private_buses; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(Manager *m) {
        sd_bus *b;

        FUNC0(m);

        while ((b = FUNC5(m->private_buses)))
                FUNC1(m, &b);

        m->private_buses = FUNC4(m->private_buses);

        m->private_listen_event_source = FUNC3(m->private_listen_event_source);
        m->private_listen_fd = FUNC2(m->private_listen_fd);
}