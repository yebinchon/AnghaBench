#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int in_unused; int /*<<< orphan*/  keep_always; int /*<<< orphan*/  contexts; } ;
typedef  TYPE_2__ Window ;
struct TYPE_12__ {TYPE_1__* cache; int /*<<< orphan*/  window; } ;
struct TYPE_10__ {TYPE_2__* last_unused; int /*<<< orphan*/  unused; } ;
typedef  TYPE_3__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  by_window ; 
 int /*<<< orphan*/  unused ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(Context *c) {
        Window *w;

        FUNC3(c);

        if (!c->window)
                return;

        w = FUNC2(c->window);
        FUNC1(by_window, w->contexts, c);

        if (!w->contexts && !w->keep_always) {
                /* Not used anymore? */
#if ENABLE_DEBUG_MMAP_CACHE
                /* Unmap unused windows immediately to expose use-after-unmap
                 * by SIGSEGV. */
                window_free(w);
#else
                FUNC0(unused, c->cache->unused, w);
                if (!c->cache->last_unused)
                        c->cache->last_unused = w;

                w->in_unused = true;
#endif
        }
}