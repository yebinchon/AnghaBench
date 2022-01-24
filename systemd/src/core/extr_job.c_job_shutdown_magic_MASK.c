#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int no_console_output; } ;
struct TYPE_7__ {TYPE_5__* manager; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_2__* unit; } ;
typedef  TYPE_1__ Job ;

/* Variables and functions */
 scalar_t__ JOB_START ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  SPECIAL_SHUTDOWN_TARGET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC5(Job *j) {
        FUNC1(j);

        /* The shutdown target gets some special treatment here: we
         * tell the kernel to begin with flushing its disk caches, to
         * optimize shutdown time a bit. Ideally we wouldn't hardcode
         * this magic into PID 1. However all other processes aren't
         * options either since they'd exit much sooner than PID 1 and
         * asynchronous sync() would cause their exit to be
         * delayed. */

        if (j->type != JOB_START)
                return;

        if (!FUNC0(j->unit->manager))
                return;

        if (!FUNC4(j->unit, SPECIAL_SHUTDOWN_TARGET))
                return;

        /* In case messages on console has been disabled on boot */
        j->unit->manager->no_console_output = false;

        if (FUNC3() > 0)
                return;

        (void) FUNC2(NULL);
}