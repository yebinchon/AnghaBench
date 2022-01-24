#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  LINK_STATE_CONFIGURING ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link_down_handler ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 

int FUNC6(Link *link) {
        int r;

        FUNC3(link, LINK_STATE_CONFIGURING);

        if (FUNC5(link->kind, "can")) {
                /* The CAN interface must be down to configure bitrate, etc... */
                if ((link->flags & IFF_UP)) {
                        r = FUNC0(link, link_down_handler);
                        if (r < 0) {
                                FUNC1(link);
                                return r;
                        }
                } else {
                        r = FUNC2(link);
                        if (r < 0) {
                                FUNC1(link);
                                return r;
                        }
                }

                return 0;
        }

        if (!(link->flags & IFF_UP)) {
                r = FUNC4(link);
                if (r < 0) {
                        FUNC1(link);
                        return r;
                }
        }

        return 0;
}