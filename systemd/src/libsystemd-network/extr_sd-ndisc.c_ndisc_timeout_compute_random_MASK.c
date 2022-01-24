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
typedef  int usec_t ;

/* Variables and functions */
 int USEC_PER_SEC ; 
 int FUNC0 () ; 

__attribute__((used)) static usec_t FUNC1(usec_t val) {
        /* compute a time that is random within ±10% of the given value */
        return val - val / 10 +
                (FUNC0() % (2 * USEC_PER_SEC)) * val / 10 / USEC_PER_SEC;
}