#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int n_autovts; struct TYPE_5__* manager; } ;
typedef  TYPE_1__ Seat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (unsigned int) ; 

int FUNC5(Seat *s) {
        int r = 0;
        unsigned i;

        FUNC0(s);
        FUNC0(s->manager);

        if (s->manager->n_autovts <= 0)
                return 0;

        if (!FUNC3(s))
                return 0;

        FUNC1("Preallocating VTs...");

        for (i = 1; i <= s->manager->n_autovts; i++) {
                int q;

                q = FUNC4(i);
                if (q < 0)
                        r = FUNC2(q, "Failed to preallocate VT %u: %m", i);
        }

        return r;
}