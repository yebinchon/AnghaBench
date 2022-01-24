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
struct timer_info {int /*<<< orphan*/  id; int /*<<< orphan*/  next_elapse; scalar_t__ machine; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct timer_info const*) ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const struct timer_info *a, const struct timer_info *b) {
        int r;

        FUNC1(a);
        FUNC1(b);

        if (!a->machine && b->machine)
                return -1;
        if (a->machine && !b->machine)
                return 1;
        if (a->machine && b->machine) {
                r = FUNC2(a->machine, b->machine);
                if (r != 0)
                        return r;
        }

        r = FUNC0(a->next_elapse, b->next_elapse);
        if (r != 0)
                return r;

        return FUNC3(a->id, b->id);
}