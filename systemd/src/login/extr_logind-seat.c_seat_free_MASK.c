#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  state_file; int /*<<< orphan*/  positions; int /*<<< orphan*/  id; TYPE_1__* manager; scalar_t__ devices; int /*<<< orphan*/  active; scalar_t__ sessions; scalar_t__ in_gc_queue; } ;
struct TYPE_8__ {int /*<<< orphan*/  seats; int /*<<< orphan*/  seat_gc_queue; } ;
typedef  TYPE_2__ Seat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gc_queue ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

Seat* FUNC7(Seat *s) {
        if (!s)
                return NULL;

        if (s->in_gc_queue)
                FUNC0(gc_queue, s->manager->seat_gc_queue, s);

        while (s->sessions)
                FUNC6(s->sessions);

        FUNC1(!s->active);

        while (s->devices)
                FUNC2(s->devices);

        FUNC4(s->manager->seats, s->id);

        FUNC3(s->positions);
        FUNC3(s->state_file);

        return FUNC5(s);
}