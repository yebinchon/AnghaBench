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
typedef  int /*<<< orphan*/  sd_device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC3 (char const*,char const*) ; 

__attribute__((used)) static int FUNC4(sd_device *a, sd_device *b) {
        const char *a_val, *b_val;
        int r;

        FUNC0(a);
        FUNC0(b);

        r = FUNC1(a, &a_val);
        if (r < 0)
                return r;

        r = FUNC1(b, &b_val);
        if (r < 0)
                return r;

        if (!FUNC3(a_val, b_val))
                return false;

        r = FUNC2(a, &a_val);
        if (r < 0)
                return r;

        r = FUNC2(b, &b_val);
        if (r < 0)
                return r;

        return FUNC3(a_val, b_val);
}