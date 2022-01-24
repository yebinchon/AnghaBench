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
 scalar_t__ CGROUP_CPU_SHARES_MAX ; 
 scalar_t__ CGROUP_CPU_SHARES_MIN ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        uint64_t *u = userdata;
        uintmax_t k;

        FUNC1(u);

        k = FUNC3(v);
        if (k < CGROUP_CPU_SHARES_MIN || k > CGROUP_CPU_SHARES_MAX)
                return FUNC2(v, flags, FUNC0(ERANGE),
                                "shares value out of range.");

        *u = (uint64_t) k;
        return 0;
}