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
struct TYPE_5__ {scalar_t__ nscd_cache_flush_event; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  SD_EVENT_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int,char*) ; 
 int /*<<< orphan*/  on_nscd_cache_flush_event ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

int FUNC6(Manager *m) {
        int r;

        FUNC0(m);

        if (!m->nscd_cache_flush_event) {
                r = FUNC2(m->event, &m->nscd_cache_flush_event, on_nscd_cache_flush_event, m);
                if (r < 0)
                        return FUNC1(r, "Failed to allocate NSCD cache flush event: %m");

                FUNC3(m->nscd_cache_flush_event, "nscd-cache-flush");
        }

        r = FUNC4(m->nscd_cache_flush_event, SD_EVENT_ONESHOT);
        if (r < 0) {
                m->nscd_cache_flush_event = FUNC5(m->nscd_cache_flush_event);
                return FUNC1(r, "Failed to enable NSCD cache flush event: %m");
        }

        return 0;
}