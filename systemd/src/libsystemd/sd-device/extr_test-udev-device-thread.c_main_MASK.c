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
struct udev_device {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct udev_device**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread ; 
 int FUNC3 (struct udev_device*) ; 
 struct udev_device* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (char*) ; 

int FUNC6(int argc, char *argv[]) {
        struct udev_device *loopback;
        pthread_t t;

        FUNC0(FUNC5("SYSTEMD_MEMPOOL") == 0);

        FUNC0(loopback = FUNC4(NULL, "/sys/class/net/lo"));

        FUNC0(FUNC3(loopback));

        FUNC0(FUNC1(&t, NULL, thread, &loopback) == 0);
        FUNC0(FUNC2(t, NULL) == 0);

        FUNC0(!loopback);

        return 0;
}