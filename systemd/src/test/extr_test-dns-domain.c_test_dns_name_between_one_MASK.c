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
 int FUNC1 (char const*,char const*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 

__attribute__((used)) static void FUNC3(const char *a, const char *b, const char *c, int ret) {
        int r;

        r = FUNC1(a, b, c);
        FUNC0(r == ret);

        r = FUNC1(c, b, a);
        if (ret >= 0)
                FUNC0(r == 0 || FUNC2(a, c) > 0);
        else
                FUNC0(r == ret);
}