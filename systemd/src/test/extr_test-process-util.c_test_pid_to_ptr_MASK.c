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
 int INT16_MAX ; 
 int INT16_MIN ; 
 int INT32_MAX ; 
 int INT32_MIN ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void) {

        FUNC2(FUNC1(NULL) == 0);
        FUNC2(FUNC0(0) == NULL);

        FUNC2(FUNC1(FUNC0(1)) == 1);
        FUNC2(FUNC1(FUNC0(2)) == 2);
        FUNC2(FUNC1(FUNC0(-1)) == -1);
        FUNC2(FUNC1(FUNC0(-2)) == -2);

        FUNC2(FUNC1(FUNC0(INT16_MAX)) == INT16_MAX);
        FUNC2(FUNC1(FUNC0(INT16_MIN)) == INT16_MIN);

#if SIZEOF_PID_T >= 4
        assert_se(PTR_TO_PID(PID_TO_PTR(INT32_MAX)) == INT32_MAX);
        assert_se(PTR_TO_PID(PID_TO_PTR(INT32_MIN)) == INT32_MIN);
#endif
}