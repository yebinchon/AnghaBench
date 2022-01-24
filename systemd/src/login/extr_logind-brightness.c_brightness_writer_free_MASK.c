#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  child_event_source; int /*<<< orphan*/  pending_messages; int /*<<< orphan*/  current_messages; struct TYPE_8__* path; int /*<<< orphan*/  device; TYPE_1__* manager; } ;
struct TYPE_7__ {int /*<<< orphan*/  brightness_writers; } ;
typedef  TYPE_2__ BrightnessWriter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(BrightnessWriter *w) {
        if (!w)
                return;

        if (w->manager && w->path)
                (void) FUNC1(w->manager->brightness_writers, w->path, w);

        FUNC2(w->device);
        FUNC0(w->path);

        FUNC4(w->current_messages);
        FUNC4(w->pending_messages);

        w->child_event_source = FUNC3(w->child_event_source);

        FUNC0(w);
}