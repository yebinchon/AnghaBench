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

/* Variables and functions */
 unsigned int DNS_N_LABELS_MAX ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const**) ; 

int FUNC2(const char *name) {
        unsigned n = 0;
        const char *p;
        int r;

        FUNC0(name);

        p = name;
        for (;;) {
                r = FUNC1(&p);
                if (r < 0)
                        return r;
                if (r == 0)
                        break;

                if (n >= DNS_N_LABELS_MAX)
                        return -EINVAL;

                n++;
        }

        return (int) n;
}