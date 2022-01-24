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
typedef  int /*<<< orphan*/  sd_id128_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  arg_machine_id ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const char *m) {
        sd_id128_t t;
        FUNC0(m);

        if (FUNC1(m, &t) < 0)
                return -EINVAL;

        if (FUNC2(t))
                return -EINVAL;

        arg_machine_id = t;
        return 0;
}