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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  sd_event_source ;
struct TYPE_6__ {scalar_t__ state; } ;
typedef  TYPE_1__ Timer ;

/* Variables and functions */
 TYPE_1__* FUNC0 (void*) ; 
 scalar_t__ TIMER_WAITING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(sd_event_source *s, uint64_t usec, void *userdata) {
        Timer *t = FUNC0(userdata);

        FUNC2(t);

        if (t->state != TIMER_WAITING)
                return 0;

        FUNC3(FUNC1(t), "Timer elapsed.");
        FUNC4(t);
        return 0;
}