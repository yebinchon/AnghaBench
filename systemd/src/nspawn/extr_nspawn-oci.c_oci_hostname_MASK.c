#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  hostname; } ;
typedef  TYPE_1__ Settings ;
typedef  int /*<<< orphan*/  JsonVariant ;
typedef  int /*<<< orphan*/  JsonDispatchFlags ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        Settings *s = userdata;
        const char *n;

        FUNC1(s);

        FUNC2(n = FUNC6(v));

        if (!FUNC4(n, false))
                return FUNC5(v, flags, FUNC0(EINVAL),
                                "Hostname string is not a valid hostname: %s", n);

        return FUNC3(&s->hostname, n);
}