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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_4__ {int /*<<< orphan*/  sigwinch_event_source; int /*<<< orphan*/  master_event_source; int /*<<< orphan*/  stdout_event_source; int /*<<< orphan*/  stdin_event_source; } ;
typedef  TYPE_1__ PTYForward ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(PTYForward *f, int64_t priority) {
        int r;
        FUNC0(f);

        r = FUNC1(f->stdin_event_source, priority);
        if (r < 0)
                return r;

        r = FUNC1(f->stdout_event_source, priority);
        if (r < 0)
                return r;

        r = FUNC1(f->master_event_source, priority);
        if (r < 0)
                return r;

        r = FUNC1(f->sigwinch_event_source, priority);
        if (r < 0)
                return r;

        return 0;
}