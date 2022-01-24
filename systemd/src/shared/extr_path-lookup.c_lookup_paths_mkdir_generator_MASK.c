#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  generator_late; int /*<<< orphan*/  generator_early; int /*<<< orphan*/  generator; } ;
typedef  TYPE_1__ LookupPaths ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

int FUNC2(LookupPaths *p) {
        int r, q;

        FUNC0(p);

        if (!p->generator || !p->generator_early || !p->generator_late)
                return -EINVAL;

        r = FUNC1(p->generator, 0755);

        q = FUNC1(p->generator_early, 0755);
        if (q < 0 && r >= 0)
                r = q;

        q = FUNC1(p->generator_late, 0755);
        if (q < 0 && r >= 0)
                r = q;

        return r;
}