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
typedef  int /*<<< orphan*/  char32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(const char *str) {
        char32_t c;
        int r;

        r = FUNC1(str, &c);
        if (r < 0)
                return r;

        /* TODO: we should detect combining characters */

        return FUNC0(c) ? 2 : 1;
}