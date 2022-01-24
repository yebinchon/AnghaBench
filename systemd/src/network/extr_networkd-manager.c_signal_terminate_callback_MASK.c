#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct signalfd_siginfo {int dummy; } ;
typedef  int /*<<< orphan*/  sd_event_source ;
struct TYPE_3__ {int restarting; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(sd_event_source *s, const struct signalfd_siginfo *si, void *userdata) {
        Manager *m = userdata;

        FUNC0(m);
        m->restarting = false;

        FUNC1("Terminate operation initiated.");

        return FUNC2(FUNC3(s), 0);
}