#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  fifo_path; int /*<<< orphan*/  state_file; int /*<<< orphan*/  id; TYPE_1__* manager; int /*<<< orphan*/  fifo_fd; int /*<<< orphan*/  event_source; int /*<<< orphan*/  why; int /*<<< orphan*/  who; } ;
struct TYPE_7__ {int /*<<< orphan*/  inhibitors; } ;
typedef  TYPE_2__ Inhibitor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

Inhibitor* FUNC5(Inhibitor *i) {

        if (!i)
                return NULL;

        FUNC0(i->who);
        FUNC0(i->why);

        FUNC4(i->event_source);
        FUNC3(i->fifo_fd);

        FUNC1(i->manager->inhibitors, i->id);

        /* Note that we don't remove neither the state file nor the fifo path here, since we want both to
         * survive daemon restarts */
        FUNC0(i->state_file);
        FUNC0(i->fifo_path);

        return FUNC2(i);
}