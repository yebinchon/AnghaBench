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
typedef  int /*<<< orphan*/  JsonVariant ;
typedef  int /*<<< orphan*/  JsonDispatchFlags ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        const char *z;
        int t, *type = userdata;

        FUNC1(type);

        z = FUNC5(FUNC3(v), "RLIMIT_");
        if (!z)
                return FUNC2(v, flags, FUNC0(EINVAL),
                                "rlimit entry's name does not begin with 'RLIMIT_', refusing: %s",
                                FUNC3(v));

        t = FUNC4(z);
        if (t < 0)
                return FUNC2(v, flags, FUNC0(EINVAL),
                                "rlimit name unknown: %s", FUNC3(v));

        *type = t;
        return 0;
}