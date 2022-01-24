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
struct TYPE_5__ {int /*<<< orphan*/  image_cache_defer_event; int /*<<< orphan*/  event; int /*<<< orphan*/  image_cache; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  SD_EVENT_ONESHOT ; 
 int /*<<< orphan*/  SD_EVENT_PRIORITY_IDLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  image_cache_flush ; 
 int /*<<< orphan*/  image_hash_ops ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(Manager *m) {
        int r;

        FUNC0(m);

        r = FUNC1(&m->image_cache, &image_hash_ops);
        if (r < 0)
                return r;

        /* We flush the cache as soon as we are idle again */
        if (!m->image_cache_defer_event) {
                r = FUNC2(m->event, &m->image_cache_defer_event, image_cache_flush, m);
                if (r < 0)
                        return r;

                r = FUNC4(m->image_cache_defer_event, SD_EVENT_PRIORITY_IDLE);
                if (r < 0)
                        return r;
        }

        r = FUNC3(m->image_cache_defer_event, SD_EVENT_ONESHOT);
        if (r < 0)
                return r;

        return 0;
}