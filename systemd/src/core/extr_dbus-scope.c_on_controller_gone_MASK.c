#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_bus_track ;
struct TYPE_3__ {int /*<<< orphan*/  controller_track; scalar_t__ controller; } ;
typedef  TYPE_1__ Scope ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(sd_bus_track *track, void *userdata) {
        Scope *s = userdata;

        FUNC1(track);

        if (s->controller) {
                FUNC2(FUNC0(s), "Controller %s disappeared from bus.", s->controller);
                FUNC5(FUNC0(s));
                s->controller = FUNC3(s->controller);
        }

        s->controller_track = FUNC4(s->controller_track);

        return 0;
}