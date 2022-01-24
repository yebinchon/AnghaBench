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
struct TYPE_8__ {scalar_t__ fd; struct TYPE_8__* seat; struct TYPE_8__* name; int /*<<< orphan*/  check_event_source; int /*<<< orphan*/  io_event_source; TYPE_1__* manager; } ;
struct TYPE_7__ {int /*<<< orphan*/  buttons; } ;
typedef  TYPE_2__ Button ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(Button *b) {
        FUNC0(b);

        FUNC3(b->manager->buttons, b->name);

        FUNC4(b->io_event_source);
        FUNC4(b->check_event_source);

        if (b->fd >= 0)
                /* If the device has been unplugged close() returns
                 * ENODEV, let's ignore this, hence we don't use
                 * safe_close() */
                (void) FUNC1(b->fd);

        FUNC2(b->name);
        FUNC2(b->seat);
        FUNC2(b);
}