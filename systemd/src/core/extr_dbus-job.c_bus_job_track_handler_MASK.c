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
struct TYPE_6__ {int /*<<< orphan*/  bus_track; } ;
typedef  TYPE_1__ sd_bus_track ;
typedef  TYPE_1__ Job ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(sd_bus_track *t, void *userdata) {
        Job *j = userdata;

        FUNC0(t);
        FUNC0(j);

        j->bus_track = FUNC2(j->bus_track); /* make sure we aren't called again */

        /* Last client dropped off the bus, maybe we should GC this now? */
        FUNC1(j);
        return 0;
}