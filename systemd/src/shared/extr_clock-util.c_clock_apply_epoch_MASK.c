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
struct timespec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 scalar_t__ TIME_EPOCH_USEC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*,scalar_t__) ; 

int FUNC3(void) {
        struct timespec ts;

        if (FUNC1(CLOCK_REALTIME) >= TIME_EPOCH_USEC)
                return 0;

        if (FUNC0(CLOCK_REALTIME, FUNC2(&ts, TIME_EPOCH_USEC)) < 0)
                return -errno;

        return 1;
}