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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 size_t FUNC1 (char const*,char*) ; 
 int FUNC2 (char const*,char const*,size_t) ; 

__attribute__((used)) static int FUNC3(const char *a, const char *b) {
        size_t x, y;

        FUNC0(a);
        FUNC0(b);

        x = FUNC1(a, " ");
        y = FUNC1(b, " ");
        if (x != y)
                return x < y ? -1 : x > y ? 1 : 0;

        return FUNC2(a, b, x);
}