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
struct TYPE_4__ {scalar_t__ pending_reload_message; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

int FUNC4(Manager *m) {
        int r;

        FUNC0(m);

        if (!m->pending_reload_message)
                return 0;

        /* If we cannot get rid of this message we won't dispatch any D-Bus messages, so that we won't end up wanting
         * to queue another message. */

        r = FUNC3(NULL, m->pending_reload_message, NULL);
        if (r < 0)
                FUNC1(r, "Failed to send queued message, ignoring: %m");

        m->pending_reload_message = FUNC2(m->pending_reload_message);

        return 0;
}