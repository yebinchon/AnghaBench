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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  sd_event_source ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC5 (int,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(sd_event_source *source, int fd, uint32_t revents, void *userdata) {
        Manager *m = userdata;
        char buf[PATH_MAX];
        ssize_t n;

        n = FUNC5(fd, buf, sizeof(buf), 0);
        if (n < 0)
                return FUNC2(errno, "Failed to read cgroups agent message: %m");
        if (n == 0) {
                FUNC1("Got zero-length cgroups agent message, ignoring.");
                return 0;
        }
        if ((size_t) n >= sizeof(buf)) {
                FUNC1("Got overly long cgroups agent message, ignoring.");
                return 0;
        }

        if (FUNC4(buf, 0, n)) {
                FUNC1("Got cgroups agent message with embedded NUL byte, ignoring.");
                return 0;
        }
        buf[n] = 0;

        FUNC3(m, buf);
        (void) FUNC0(m, buf);

        return 0;
}