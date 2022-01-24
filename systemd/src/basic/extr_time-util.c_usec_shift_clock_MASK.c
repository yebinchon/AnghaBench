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
typedef  scalar_t__ usec_t ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 scalar_t__ USEC_INFINITY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

usec_t FUNC4(usec_t x, clockid_t from, clockid_t to) {
        usec_t a, b;

        if (x == USEC_INFINITY)
                return USEC_INFINITY;
        if (FUNC0(from) == FUNC0(to))
                return x;

        a = FUNC1(from);
        b = FUNC1(to);

        if (x > a)
                /* x lies in the future */
                return FUNC2(b, FUNC3(x, a));
        else
                /* x lies in the past */
                return FUNC3(b, FUNC3(a, x));
}