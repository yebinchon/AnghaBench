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
struct TYPE_5__ {scalar_t__ vtfd; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ Session ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (scalar_t__,int) ; 

void FUNC4(Session *s) {
        int r;

        FUNC0(s);

        /* This is called whenever we get a VT-switch signal from the kernel.
         * We acknowledge all of them unconditionally. Note that session are
         * free to overwrite those handlers and we only register them for
         * sessions with controllers. Legacy sessions are not affected.
         * However, if we switch from a non-legacy to a legacy session, we must
         * make sure to pause all device before acknowledging the switch. We
         * process the real switch only after we are notified via sysfs, so the
         * legacy session might have already started using the devices. If we
         * don't pause the devices before the switch, we might confuse the
         * session we switch to. */

        if (s->vtfd < 0)
                return;

        FUNC2(s);
        r = FUNC3(s->vtfd, false);
        if (r < 0)
                FUNC1(r, "Cannot release VT of session %s: %m", s->id);
}