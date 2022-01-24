#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_4__ {scalar_t__ state; scalar_t__ will_auto_restart; } ;
typedef  TYPE_1__ Service ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ SERVICE_AUTO_RESTART ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(Unit *u) {
        Service *s = FUNC0(u);

        FUNC1(s);

        if (s->will_auto_restart)
                return true;
        if (s->state == SERVICE_AUTO_RESTART)
                return true;

        return FUNC2(u);
}