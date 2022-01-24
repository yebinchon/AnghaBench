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
struct unit_times {struct unit_times* name; scalar_t__ has_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct unit_times*) ; 

__attribute__((used)) static void FUNC1(struct unit_times *t) {
        struct unit_times *p;

        for (p = t; p->has_data; p++)
                FUNC0(p->name);
        FUNC0(t);
}