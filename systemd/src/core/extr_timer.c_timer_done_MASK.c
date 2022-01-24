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
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_5__ {int /*<<< orphan*/  stamp_path; void* realtime_event_source; void* monotonic_event_source; } ;
typedef  TYPE_1__ Timer ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(Unit *u) {
        Timer *t = FUNC0(u);

        FUNC1(t);

        FUNC4(t);

        t->monotonic_event_source = FUNC3(t->monotonic_event_source);
        t->realtime_event_source = FUNC3(t->realtime_event_source);

        FUNC2(t->stamp_path);
}