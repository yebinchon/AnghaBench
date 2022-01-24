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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  sd_event_source ;
struct TYPE_5__ {int /*<<< orphan*/  link; } ;
typedef  TYPE_1__ Route ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(sd_event_source *s, uint64_t usec, void *userdata) {
        Route *route = userdata;
        int r;

        FUNC0(route);

        r = FUNC3(route, route->link, NULL);
        if (r < 0)
                FUNC1(r, "Could not remove route: %m");
        else
                FUNC2(route);

        return 1;
}