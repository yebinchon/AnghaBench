#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {struct TYPE_12__* home; struct TYPE_12__* name; struct TYPE_12__* state_file; struct TYPE_12__* runtime_path; struct TYPE_12__* slice; struct TYPE_12__* runtime_dir_service; struct TYPE_12__* service; struct TYPE_12__* service_job; int /*<<< orphan*/  timer_event_source; int /*<<< orphan*/  uid; TYPE_1__* manager; scalar_t__ sessions; scalar_t__ in_gc_queue; } ;
typedef  TYPE_2__ User ;
struct TYPE_11__ {int /*<<< orphan*/  users; int /*<<< orphan*/  user_units; int /*<<< orphan*/  user_gc_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gc_queue ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

User *FUNC6(User *u) {
        if (!u)
                return NULL;

        if (u->in_gc_queue)
                FUNC0(gc_queue, u->manager->user_gc_queue, u);

        while (u->sessions)
                FUNC5(u->sessions);

        if (u->service)
                FUNC2(u->manager->user_units, u->service, u);

        if (u->runtime_dir_service)
                FUNC2(u->manager->user_units, u->runtime_dir_service, u);

        if (u->slice)
                FUNC2(u->manager->user_units, u->slice, u);

        FUNC2(u->manager->users, FUNC1(u->uid), u);

        (void) FUNC4(u->timer_event_source);

        u->service_job = FUNC3(u->service_job);

        u->service = FUNC3(u->service);
        u->runtime_dir_service = FUNC3(u->runtime_dir_service);
        u->slice = FUNC3(u->slice);
        u->runtime_path = FUNC3(u->runtime_path);
        u->state_file = FUNC3(u->state_file);
        u->name = FUNC3(u->name);
        u->home = FUNC3(u->home);

        return FUNC3(u);
}