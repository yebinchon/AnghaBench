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
struct TYPE_2__ {int /*<<< orphan*/  el; } ;

/* Variables and functions */
 int AE_DONT_WAIT ; 
 int AE_FILE_EVENTS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__ server ; 

int FUNC2(void) {
    int iterations = 4; /* See the function top-comment. */
    int count = 0;
    while (iterations--) {
        int events = 0;
        events += FUNC0(server.el, AE_FILE_EVENTS|AE_DONT_WAIT);
        events += FUNC1();
        if (!events) break;
        count += events;
    }
    return count;
}