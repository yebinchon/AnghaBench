#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int usec_t ;
struct TYPE_3__ {int watchdog_usec; int watchdog_timestamp; } ;
typedef  TYPE_1__ Uploader ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(Uploader *u) {
        usec_t after;
        usec_t elapsed_time;

        if (u->watchdog_usec <= 0)
                return;

        after = FUNC1(CLOCK_MONOTONIC);
        elapsed_time = FUNC3(after, u->watchdog_timestamp);
        if (elapsed_time > u->watchdog_usec / 2) {
                FUNC0("Update watchdog timer");
                FUNC2(false, "WATCHDOG=1");
                u->watchdog_timestamp = after;
        }
}