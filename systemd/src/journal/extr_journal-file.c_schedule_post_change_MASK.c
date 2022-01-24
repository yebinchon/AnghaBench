#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_9__ {struct TYPE_9__* post_change_timer; scalar_t__ post_change_timer_period; } ;
typedef  TYPE_1__ JournalFile ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  SD_EVENT_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void FUNC8(JournalFile *f) {
        uint64_t now;
        int r;

        FUNC0(f);
        FUNC0(f->post_change_timer);

        r = FUNC4(f->post_change_timer, NULL);
        if (r < 0) {
                FUNC2(r, "Failed to get ftruncate timer state: %m");
                goto fail;
        }
        if (r > 0)
                return;

        r = FUNC3(FUNC5(f->post_change_timer), CLOCK_MONOTONIC, &now);
        if (r < 0) {
                FUNC2(r, "Failed to get clock's now for scheduling ftruncate: %m");
                goto fail;
        }

        r = FUNC7(f->post_change_timer, now + f->post_change_timer_period);
        if (r < 0) {
                FUNC2(r, "Failed to set time for scheduling ftruncate: %m");
                goto fail;
        }

        r = FUNC6(f->post_change_timer, SD_EVENT_ONESHOT);
        if (r < 0) {
                FUNC2(r, "Failed to enable scheduled ftruncate: %m");
                goto fail;
        }

        return;

fail:
        /* On failure, let's simply post the change immediately. */
        FUNC1(f);
}