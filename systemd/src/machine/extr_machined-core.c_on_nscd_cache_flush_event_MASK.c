#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sd_event_source ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(sd_event_source *s, void *userdata) {
        /* Let's ask glibc's nscd daemon to flush its caches. We request this for the three database machines may show
         * up in: the hosts database (for resolvable machine names) and the user and group databases (for the user ns
         * ranges). */

        (void) FUNC1(FUNC0("passwd", "group", "hosts"));
        return 0;
}