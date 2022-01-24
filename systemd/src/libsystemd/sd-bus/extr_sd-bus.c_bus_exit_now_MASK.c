#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int exited; scalar_t__ event; int /*<<< orphan*/  exit_on_disconnect; int /*<<< orphan*/  exit_triggered; } ;
typedef  TYPE_1__ sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(sd_bus *bus) {
        FUNC0(bus);

        /* Exit due to close, if this is requested. If this is bus object is attached to an event source, invokes
         * sd_event_exit(), otherwise invokes libc exit(). */

        if (bus->exited) /* did we already exit? */
                return 0;
        if (!bus->exit_triggered) /* was the exit condition triggered? */
                return 0;
        if (!bus->exit_on_disconnect) /* Shall we actually exit on disconnection? */
                return 0;

        bus->exited = true; /* never exit more than once */

        FUNC3("Bus connection disconnected, exiting.");

        if (bus->event)
                return FUNC4(bus->event, EXIT_FAILURE);
        else
                FUNC2(EXIT_FAILURE);

        FUNC1("exit() didn't exit?");
}