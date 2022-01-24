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
typedef  int /*<<< orphan*/  usec_t ;
struct TYPE_5__ {scalar_t__ audit_fd; } ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_SYSTEM_BOOT ; 
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(Context *c) {
        int r = 0, q;
        usec_t t;

        FUNC0(c);

        /* We finished start-up, so let's write the utmp
         * record and send the audit msg */

#if HAVE_AUDIT
        if (c->audit_fd >= 0)
                if (audit_log_user_comm_message(c->audit_fd, AUDIT_SYSTEM_BOOT, "", "systemd-update-utmp", NULL, NULL, NULL, 1) < 0 &&
                    errno != EPERM) {
                        r = log_error_errno(errno, "Failed to send audit message: %m");
                }
#endif

        /* If this call fails it will return 0, which
         * utmp_put_reboot() will then fix to the current time */
        t = FUNC2(c);

        q = FUNC4(t);
        if (q < 0) {
                FUNC3(q, "Failed to write utmp record: %m");
                r = q;
        }

        return r;
}