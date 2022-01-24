#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ n_running_jobs; scalar_t__ n_on_console; int /*<<< orphan*/  run_queue; } ;
typedef  TYPE_1__ sd_event_source ;
struct TYPE_11__ {TYPE_1__* in_run_queue; TYPE_1__* installed; } ;
typedef  TYPE_1__ Manager ;
typedef  TYPE_3__ Job ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(sd_event_source *source, void *userdata) {
        Manager *m = userdata;
        Job *j;

        FUNC0(source);
        FUNC0(m);

        while ((j = FUNC4(m->run_queue))) {
                FUNC0(j->installed);
                FUNC0(j->in_run_queue);

                (void) FUNC1(j);
        }

        if (m->n_running_jobs > 0)
                FUNC3(m);

        if (m->n_on_console > 0)
                FUNC2(m);

        return 1;
}