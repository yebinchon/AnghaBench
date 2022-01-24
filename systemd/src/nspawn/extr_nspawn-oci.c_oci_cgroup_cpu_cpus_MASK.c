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
struct cpu_data {int /*<<< orphan*/  cpu_set; } ;
typedef  int /*<<< orphan*/  JsonVariant ;
typedef  int /*<<< orphan*/  JsonDispatchFlags ;
typedef  int /*<<< orphan*/  CPUSet ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpu_data*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        struct cpu_data *data = userdata;
        CPUSet set;
        const char *n;
        int r;

        FUNC0(data);

        FUNC1(n = FUNC4(v));

        r = FUNC5(n, &set);
        if (r < 0)
                return FUNC3(v, flags, r, "Failed to parse CPU set specification: %s", n);

        FUNC2(&data->cpu_set);
        data->cpu_set = set;

        return 0;
}