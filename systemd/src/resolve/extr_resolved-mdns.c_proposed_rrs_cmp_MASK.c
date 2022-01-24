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
typedef  int /*<<< orphan*/  DnsResourceRecord ;

/* Variables and functions */
 int FUNC0 (unsigned int,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC3(DnsResourceRecord **x, unsigned x_size, DnsResourceRecord **y, unsigned y_size) {
        unsigned m;
        int r;

        m = FUNC1(x_size, y_size);
        for (unsigned i = 0; i < m; i++) {
                r = FUNC2(&x[i], &y[i]);
                if (r != 0)
                        return r;
        }

        return FUNC0(x_size, y_size);
}