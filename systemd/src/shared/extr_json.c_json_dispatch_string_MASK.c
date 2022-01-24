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
typedef  char* JsonVariant ;
typedef  int /*<<< orphan*/  JsonDispatchFlags ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int FUNC2 (char**,int /*<<< orphan*/ ) ; 
 int FUNC3 (char**,int /*<<< orphan*/ ,int,char*,...) ; 
 scalar_t__ FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 int /*<<< orphan*/  FUNC6 (char**) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

int FUNC9(const char *name, JsonVariant *variant, JsonDispatchFlags flags, void *userdata) {
        char **s = userdata;
        int r;

        FUNC1(variant);
        FUNC1(s);

        if (FUNC4(variant)) {
                *s = FUNC7(*s);
                return 0;
        }

        if (!FUNC5(variant))
                return FUNC3(variant, flags, FUNC0(EINVAL), "JSON field '%s' is not a string.", FUNC8(name));

        r = FUNC2(s, FUNC6(variant));
        if (r < 0)
                return FUNC3(variant, flags, r, "Failed to allocate string: %m");

        return 0;
}