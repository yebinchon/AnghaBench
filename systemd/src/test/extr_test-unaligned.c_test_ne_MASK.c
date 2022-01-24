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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int*) ; 
 int FUNC2 (int*) ; 
 int FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 

__attribute__((used)) static void FUNC7(void) {
        uint16_t x = 4711;
        uint32_t y = 123456;
        uint64_t z = 9876543210;

        /* Note that we don't bother actually testing alignment issues in this function, after all the _ne() functions
         * are just aliases for the _le() or _be() implementations, which we test extensively above. Hence, in this
         * function, just ensure that they map to the right version on the local architecture. */

        FUNC0(FUNC1(&x) == 4711);
        FUNC0(FUNC2(&y) == 123456);
        FUNC0(FUNC3(&z) == 9876543210);

        FUNC4(&x, 1);
        FUNC5(&y, 2);
        FUNC6(&z, 3);

        FUNC0(x == 1);
        FUNC0(y == 2);
        FUNC0(z == 3);
}