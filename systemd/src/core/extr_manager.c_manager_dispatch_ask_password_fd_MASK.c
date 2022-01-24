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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  sd_event_source ;
struct TYPE_3__ {scalar_t__ have_ask_password; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*) ; 

__attribute__((used)) static int FUNC4(sd_event_source *source,
                                            int fd, uint32_t revents, void *userdata) {
        Manager *m = userdata;

        FUNC0(m);

        (void) FUNC1(fd);

        m->have_ask_password = FUNC2();
        if (m->have_ask_password < 0)
                /* Log error but continue. Negative have_ask_password
                 * is treated as unknown status. */
                FUNC3(m->have_ask_password, "Failed to list /run/systemd/ask-password: %m");

        return 0;
}