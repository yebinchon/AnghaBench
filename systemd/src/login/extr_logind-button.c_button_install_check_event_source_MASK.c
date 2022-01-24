#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ check_event_source; TYPE_1__* manager; } ;
struct TYPE_6__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_2__ Button ;

/* Variables and functions */
 scalar_t__ SD_EVENT_PRIORITY_IDLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  button_recheck ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC3(Button *b) {
        int r;
        FUNC0(b);

        /* Install a post handler, so that we keep rechecking as long as the lid is closed. */

        if (b->check_event_source)
                return 0;

        r = FUNC1(b->manager->event, &b->check_event_source, button_recheck, b);
        if (r < 0)
                return r;

        return FUNC2(b->check_event_source, SD_EVENT_PRIORITY_IDLE+1);
}