#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  sa; int /*<<< orphan*/  un; } ;
struct udev_ctrl {int bound; int cleanup_socket; int /*<<< orphan*/  sock; int /*<<< orphan*/  addrlen; TYPE_1__ saddr; } ;

/* Variables and functions */
 scalar_t__ EADDRINUSE ; 
 int /*<<< orphan*/  FUNC0 (struct udev_ctrl*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct udev_ctrl *uctrl) {
        int r;

        FUNC0(uctrl);

        if (uctrl->bound)
                return 0;

        r = FUNC1(uctrl->sock, &uctrl->saddr.sa, uctrl->addrlen);
        if (r < 0 && errno == EADDRINUSE) {
                (void) FUNC4(&uctrl->saddr.un);
                r = FUNC1(uctrl->sock, &uctrl->saddr.sa, uctrl->addrlen);
        }

        if (r < 0)
                return FUNC3(errno, "Failed to bind udev control socket: %m");

        if (FUNC2(uctrl->sock, 0) < 0)
                return FUNC3(errno, "Failed to listen udev control socket: %m");

        uctrl->bound = true;
        uctrl->cleanup_socket = true;

        return 0;
}