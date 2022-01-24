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
struct TYPE_4__ {int log_target_overridden; int /*<<< orphan*/  original_log_target; } ;
typedef  TYPE_1__ Manager ;
typedef  int /*<<< orphan*/  LogTarget ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(Manager *m, LogTarget target) {
        FUNC0(m);

        if (!m->log_target_overridden) {
                m->original_log_target = FUNC1();
                m->log_target_overridden = true;
        }

        FUNC2("Setting log target to %s.", FUNC4(target));
        FUNC3(target);
}