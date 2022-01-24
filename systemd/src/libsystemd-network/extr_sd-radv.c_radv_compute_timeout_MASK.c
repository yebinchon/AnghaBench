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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  SD_RADV_DEFAULT_MIN_TIMEOUT_USEC ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static usec_t FUNC3(usec_t min, usec_t max) {
        FUNC1(min <= max, SD_RADV_DEFAULT_MIN_TIMEOUT_USEC);

        /* RFC 4861: min must be no less than 3s, max must be no less than 4s */
        min = FUNC0(min, 3*USEC_PER_SEC);
        max = FUNC0(max, 4*USEC_PER_SEC);

        return min + (FUNC2() % (max - min));
}