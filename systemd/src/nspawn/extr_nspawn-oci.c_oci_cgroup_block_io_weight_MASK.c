#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uintmax_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {int /*<<< orphan*/  properties; } ;
typedef  TYPE_1__ Settings ;
typedef  int /*<<< orphan*/  JsonVariant ;
typedef  int /*<<< orphan*/  JsonDispatchFlags ;

/* Variables and functions */
 scalar_t__ CGROUP_BLKIO_WEIGHT_MAX ; 
 scalar_t__ CGROUP_BLKIO_WEIGHT_MIN ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        Settings *s = userdata;
        uintmax_t k;
        int r;

        FUNC1(s);

        k = FUNC4(v);
        if (k < CGROUP_BLKIO_WEIGHT_MIN || k > CGROUP_BLKIO_WEIGHT_MAX)
                return FUNC3(v, flags, FUNC0(ERANGE),
                                "Block I/O weight out of range.");

        r = FUNC6(s);
        if (r < 0)
                return r;

        r = FUNC5(s->properties, "(sv)", "BlockIOWeight", "t", (uint64_t) k);
        if (r < 0)
                return FUNC2(r);

        return 0;
}