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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const**,int*,int) ; 

__attribute__((used)) static void FUNC2(const char *str, int priority, int ret) {
        const char *buf = str;
        int priority2 = 0, ret2;

        ret2 = FUNC1(&buf, &priority2, false);

        FUNC0(ret == ret2);
        if (ret2 == 1)
                FUNC0(priority == priority2);
}