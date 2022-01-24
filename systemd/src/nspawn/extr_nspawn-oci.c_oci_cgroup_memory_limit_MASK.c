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
typedef  scalar_t__ uintmax_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  JsonVariant ;
typedef  int /*<<< orphan*/  JsonDispatchFlags ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        uint64_t *m = userdata;
        uintmax_t k;

        FUNC1(m);

        if (FUNC3(v)) {
                *m = UINT64_MAX;
                return 0;
        }

        if (!FUNC4(v))
                return FUNC2(v, flags, FUNC0(EINVAL),
                                "Memory limit is not an unsigned integer");

        k = FUNC5(v);
        if (k >= UINT64_MAX)
                return FUNC2(v, flags, FUNC0(ERANGE),
                                "Memory limit too large: %ji", k);

        *m = (uint64_t) k;
        return 0;
}