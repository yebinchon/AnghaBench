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
typedef  int /*<<< orphan*/  vlc_tick_t ;
struct timespec {int dummy; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int FUNC1 (struct timespec*,struct timespec*) ; 
 struct timespec FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3 (vlc_tick_t delay)
{
    struct timespec ts = FUNC2 (delay);

    /* nanosleep uses mach_absolute_time and mach_wait_until internally,
       but also handles kernel errors. Thus we use just this. */
    while (FUNC1 (&ts, &ts) == -1)
        FUNC0 (errno == EINTR);
}