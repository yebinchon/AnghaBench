#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ enabled; int /*<<< orphan*/  pending_iteration; int /*<<< orphan*/  priority; int /*<<< orphan*/  pending; } ;
typedef  TYPE_1__ sd_event_source ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SD_EVENT_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const void *a, const void *b) {
        const sd_event_source *x = a, *y = b;
        int r;

        FUNC1(x->pending);
        FUNC1(y->pending);

        /* Enabled ones first */
        if (x->enabled != SD_EVENT_OFF && y->enabled == SD_EVENT_OFF)
                return -1;
        if (x->enabled == SD_EVENT_OFF && y->enabled != SD_EVENT_OFF)
                return 1;

        /* Lower priority values first */
        r = FUNC0(x->priority, y->priority);
        if (r != 0)
                return r;

        /* Older entries first */
        return FUNC0(x->pending_iteration, y->pending_iteration);
}