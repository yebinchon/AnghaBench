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
struct in_addr_data {int dummy; } ;
typedef  int /*<<< orphan*/  OrderedSet ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct in_addr_data const*) ; 

__attribute__((used)) static int FUNC2(OrderedSet *s, const struct in_addr_data *addresses, unsigned n) {
        int r, c = 0;
        unsigned i;

        FUNC0(s);
        FUNC0(addresses || n == 0);

        for (i = 0; i < n; i++) {
                r = FUNC1(s, addresses+i);
                if (r < 0)
                        return r;

                c += r;
        }

        return c;
}