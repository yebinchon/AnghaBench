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
struct TYPE_4__ {int shutdown_dry_run; int unlink_nologin; scalar_t__ scheduled_shutdown_timeout; int /*<<< orphan*/  scheduled_shutdown_type; void* nologin_timeout_source; void* wall_message_timeout_source; void* scheduled_shutdown_timeout_source; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(Manager *m) {
        FUNC0(m);

        m->scheduled_shutdown_timeout_source = FUNC2(m->scheduled_shutdown_timeout_source);
        m->wall_message_timeout_source = FUNC2(m->wall_message_timeout_source);
        m->nologin_timeout_source = FUNC2(m->nologin_timeout_source);

        m->scheduled_shutdown_type = FUNC1(m->scheduled_shutdown_type);
        m->scheduled_shutdown_timeout = 0;
        m->shutdown_dry_run = false;

        if (m->unlink_nologin) {
                (void) FUNC4("/run/nologin");
                m->unlink_nologin = false;
        }

        (void) FUNC3("/run/systemd/shutdown/scheduled");
}