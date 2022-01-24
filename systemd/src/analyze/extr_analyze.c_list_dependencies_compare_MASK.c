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
typedef  int /*<<< orphan*/  usec_t ;
struct unit_times {int /*<<< orphan*/  activated; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct unit_times* FUNC1 (int /*<<< orphan*/ ,char* const) ; 
 int /*<<< orphan*/  unit_times_hashmap ; 

__attribute__((used)) static int FUNC2(char *const *a, char *const *b) {
        usec_t usa = 0, usb = 0;
        struct unit_times *times;

        times = FUNC1(unit_times_hashmap, *a);
        if (times)
                usa = times->activated;
        times = FUNC1(unit_times_hashmap, *b);
        if (times)
                usb = times->activated;

        return FUNC0(usb, usa);
}