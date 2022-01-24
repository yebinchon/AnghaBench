#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ts ;
struct unit_times {double activating; double activated; double deactivating; double deactivated; int /*<<< orphan*/  name; int /*<<< orphan*/  time; } ;

/* Variables and functions */
 int FORMAT_TIMESPAN_MAX ; 
 double SCALE_X ; 
 int /*<<< orphan*/  USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,double,double,int) ; 
 int /*<<< orphan*/  FUNC2 (int,double,int,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC3(struct unit_times *u, double width, int y) {
        char ts[FORMAT_TIMESPAN_MAX];
        bool b;

        if (!u->name)
                return 0;

        FUNC1("activating",   u->activating, u->activated, y);
        FUNC1("active",       u->activated, u->deactivating, y);
        FUNC1("deactivating", u->deactivating, u->deactivated, y);

        /* place the text on the left if we have passed the half of the svg width */
        b = u->activating * SCALE_X < width / 2;
        if (u->time)
                FUNC2(b, u->activating, y, "%s (%s)",
                         u->name, FUNC0(ts, sizeof(ts), u->time, USEC_PER_MSEC));
        else
                FUNC2(b, u->activating, y, "%s", u->name);

        return 1;
}