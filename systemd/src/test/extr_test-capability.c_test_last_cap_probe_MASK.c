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
 scalar_t__ CAP_LAST_CAP ; 
 int /*<<< orphan*/  PR_CAPBSET_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC3(void) {
        unsigned long p = (unsigned long)CAP_LAST_CAP;

        if (FUNC2(PR_CAPBSET_READ, p) < 0) {
                for (p--; p > 0; p --)
                        if (FUNC2(PR_CAPBSET_READ, p) >= 0)
                                break;
        } else {
                for (;; p++)
                        if (FUNC2(PR_CAPBSET_READ, p+1) < 0)
                                break;
        }

        FUNC0(p != 0);
        FUNC0(p == FUNC1());
}