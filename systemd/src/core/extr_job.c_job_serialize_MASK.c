#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ begin_usec; scalar_t__ begin_running_usec; int /*<<< orphan*/  bus_track; int /*<<< orphan*/  ignore_order; int /*<<< orphan*/  sent_dbus_new_signal; int /*<<< orphan*/  irreversible; int /*<<< orphan*/  state; int /*<<< orphan*/  type; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ Job ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,scalar_t__) ; 

int FUNC9(Job *j, FILE *f) {
        FUNC0(j);
        FUNC0(f);

        (void) FUNC7(f, "job-id", "%u", j->id);
        (void) FUNC6(f, "job-type", FUNC4(j->type));
        (void) FUNC6(f, "job-state", FUNC3(j->state));
        (void) FUNC5(f, "job-irreversible", j->irreversible);
        (void) FUNC5(f, "job-sent-dbus-new-signal", j->sent_dbus_new_signal);
        (void) FUNC5(f, "job-ignore-order", j->ignore_order);

        if (j->begin_usec > 0)
                (void) FUNC8(f, "job-begin", j->begin_usec);
        if (j->begin_running_usec > 0)
                (void) FUNC8(f, "job-begin-running", j->begin_running_usec);

        FUNC1(j->bus_track, f, "subscribed");

        /* End marker */
        FUNC2('\n', f);
        return 0;
}