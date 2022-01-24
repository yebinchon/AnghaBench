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
struct in_addr {int dummy; } ;
typedef  int /*<<< orphan*/  OrderedSet ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct in_addr const*) ; 

__attribute__((used)) static int FUNC2(OrderedSet *s,
                                     const struct in_addr *addresses,
                                     size_t n,
                                     bool (*predicate)(const struct in_addr *addr)) {
        int r, c = 0;
        size_t i;

        FUNC0(s);
        FUNC0(n == 0 || addresses);

        for (i = 0; i < n; i++) {
                if (predicate && !predicate(&addresses[i]))
                        continue;
                r = FUNC1(s, addresses+i);
                if (r < 0)
                        return r;

                c += r;
        }

        return c;
}