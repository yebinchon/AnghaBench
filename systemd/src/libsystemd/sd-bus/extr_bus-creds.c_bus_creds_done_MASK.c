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
struct TYPE_4__ {int /*<<< orphan*/  cmdline_array; int /*<<< orphan*/  well_known_names; int /*<<< orphan*/  tty; int /*<<< orphan*/  supplementary_gids; int /*<<< orphan*/  unescaped_description; int /*<<< orphan*/  user_slice; int /*<<< orphan*/  slice; int /*<<< orphan*/  user_unit; int /*<<< orphan*/  unit; int /*<<< orphan*/  session; } ;
typedef  TYPE_1__ sd_bus_creds ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(sd_bus_creds *c) {
        FUNC0(c);

        /* For internal bus cred structures that are allocated by
         * something else */

        FUNC1(c->session);
        FUNC1(c->unit);
        FUNC1(c->user_unit);
        FUNC1(c->slice);
        FUNC1(c->user_slice);
        FUNC1(c->unescaped_description);
        FUNC1(c->supplementary_gids);
        FUNC1(c->tty);

        FUNC1(c->well_known_names); /* note that this is an strv, but
                                    * we only free the array, not the
                                    * strings the array points to. The
                                    * full strv we only free if
                                    * c->allocated is set, see
                                    * below. */

        FUNC2(c->cmdline_array);
}