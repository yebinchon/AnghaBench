#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int in_unused; int /*<<< orphan*/  contexts; struct TYPE_11__* window; struct TYPE_11__* unused_prev; TYPE_1__* cache; } ;
typedef  TYPE_2__ Window ;
struct TYPE_10__ {TYPE_2__* last_unused; int /*<<< orphan*/  unused; } ;
typedef  TYPE_2__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  by_window ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  unused ; 

__attribute__((used)) static void FUNC4(Context *c, Window *w) {
        FUNC2(c);
        FUNC2(w);

        if (c->window == w)
                return;

        FUNC3(c);

        if (w->in_unused) {
                /* Used again? */
                FUNC1(unused, c->cache->unused, w);
                if (c->cache->last_unused == w)
                        c->cache->last_unused = w->unused_prev;

                w->in_unused = false;
        }

        c->window = w;
        FUNC0(by_window, w->contexts, c);
}