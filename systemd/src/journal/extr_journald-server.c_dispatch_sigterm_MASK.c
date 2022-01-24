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
struct TYPE_3__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ Server ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct signalfd_siginfo const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(sd_event_source *es, const struct signalfd_siginfo *si, void *userdata) {
        Server *s = userdata;

        FUNC0(s);

        FUNC1(LOG_INFO, si);

        FUNC2(s->event, 0);
        return 0;
}