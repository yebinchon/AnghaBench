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
typedef  int JsonVariant ;
typedef  int /*<<< orphan*/  JsonDispatchFlags ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

int FUNC6(const char *name, JsonVariant *variant, JsonDispatchFlags flags, void *userdata) {
        int *b = userdata;

        FUNC1(variant);
        FUNC1(b);

        if (!FUNC4(variant))
                return FUNC2(variant, flags, FUNC0(EINVAL), "JSON field '%s' is not a boolean.", FUNC5(name));

        *b = FUNC3(variant);
        return 0;
}