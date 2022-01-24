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
struct signalfd_siginfo {int dummy; } ;
typedef  int /*<<< orphan*/  sd_event_source ;
struct TYPE_5__ {int /*<<< orphan*/  events; } ;
typedef  TYPE_1__ Uploader ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct signalfd_siginfo const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(sd_event_source *event,
                            const struct signalfd_siginfo *si,
                            void *userdata) {
        Uploader *u = userdata;

        FUNC0(u);

        FUNC3(LOG_INFO, si);

        FUNC1(u);
        FUNC2(u);

        FUNC4(u->events, 0);
        return 0;
}