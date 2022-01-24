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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 unsigned int UINT32_MAX ; 
 unsigned int UINT64_MAX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void) {
        /* on glibc dev_t is 64bit, even though in the kernel it is only 32bit */
        FUNC2(sizeof(dev_t) == sizeof(uint64_t));

        FUNC3(FUNC0(0U));
        FUNC3(FUNC1(0U));

        FUNC3(FUNC0(1U));
        FUNC3(FUNC1(1U));

        FUNC3(!FUNC0(-1U));
        FUNC3(!FUNC1(-1U));

        FUNC3(FUNC0(1U << 10));
        FUNC3(FUNC1(1U << 10));

        FUNC3(FUNC0((1U << 12) - 1));
        FUNC3(FUNC1((1U << 20) - 1));

        FUNC3(!FUNC0((1U << 12)));
        FUNC3(!FUNC1((1U << 20)));

        FUNC3(!FUNC0(1U << 25));
        FUNC3(!FUNC1(1U << 25));

        FUNC3(!FUNC0(UINT32_MAX));
        FUNC3(!FUNC1(UINT32_MAX));

        FUNC3(!FUNC0(UINT64_MAX));
        FUNC3(!FUNC1(UINT64_MAX));

        FUNC3(FUNC0(FUNC4(0)));
        FUNC3(FUNC1(FUNC5(0)));
}