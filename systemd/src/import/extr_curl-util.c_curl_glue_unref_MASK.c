#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_event_source ;
struct TYPE_6__ {int /*<<< orphan*/  event; int /*<<< orphan*/ * timer; int /*<<< orphan*/  ios; scalar_t__ curl; } ;
typedef  TYPE_1__ CurlGlue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

CurlGlue *FUNC6(CurlGlue *g) {
        sd_event_source *io;

        if (!g)
                return NULL;

        if (g->curl)
                FUNC0(g->curl);

        while ((io = FUNC2(g->ios))) {
                FUNC4(io);
        }

        FUNC1(g->ios);

        FUNC4(g->timer);
        FUNC5(g->event);
        return FUNC3(g);
}