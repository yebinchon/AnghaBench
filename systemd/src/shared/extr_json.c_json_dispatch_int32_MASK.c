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
typedef  scalar_t__ int32_t ;
typedef  scalar_t__ JsonVariant ;
typedef  int /*<<< orphan*/  JsonDispatchFlags ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ERANGE ; 
 scalar_t__ INT32_MAX ; 
 scalar_t__ INT32_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

int FUNC6(const char *name, JsonVariant *variant, JsonDispatchFlags flags, void *userdata) {
        int32_t *i = userdata;

        FUNC1(variant);
        FUNC1(i);

        if (!FUNC4(variant))
                return FUNC2(variant, flags, FUNC0(EINVAL), "JSON field '%s' is not an integer.", FUNC5(name));

        if (FUNC3(variant) < INT32_MIN || FUNC3(variant) > INT32_MAX)
                return FUNC2(variant, flags, FUNC0(ERANGE), "JSON field '%s' out of bounds.", FUNC5(name));

        *i = (int32_t) FUNC3(variant);
        return 0;
}