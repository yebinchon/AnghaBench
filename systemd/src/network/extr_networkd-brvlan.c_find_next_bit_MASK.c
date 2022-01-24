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
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(int i, uint32_t x) {
        int j;

        if (i >= 32)
                return -1;

        /* find first bit */
        if (i < 0)
                return FUNC0(x);

        /* mask off prior finds to get next */
        j = FUNC1(x >> i);
        return j ? j + i : 0;
}