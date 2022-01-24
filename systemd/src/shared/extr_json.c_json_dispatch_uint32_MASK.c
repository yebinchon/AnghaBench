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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ JsonVariant ;
typedef  int /*<<< orphan*/  JsonDispatchFlags ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ UINT32_MAX ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

int FUNC6(const char *name, JsonVariant *variant, JsonDispatchFlags flags, void *userdata) {
        uint32_t *u = userdata;

        FUNC1(variant);
        FUNC1(u);

        if (!FUNC3(variant))
                return FUNC2(variant, flags, FUNC0(EINVAL), "JSON field '%s' is not an unsigned integer.", FUNC5(name));

        if (FUNC4(variant) > UINT32_MAX)
                return FUNC2(variant, flags, FUNC0(ERANGE), "JSON field '%s' out of bounds.", FUNC5(name));

        *u = (uint32_t) FUNC4(variant);
        return 0;
}