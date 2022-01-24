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
typedef  char const* sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;

/* Variables and functions */
 scalar_t__ LOG_INFO ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ arg_quiet ; 
 int /*<<< orphan*/  FUNC1 (char const**) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const**) ; 
 int FUNC5 (char const**,char*,unsigned int*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        const char **our_path = userdata, *line;
        unsigned priority;
        int r;

        FUNC1(m);
        FUNC1(our_path);

        r = FUNC5(m, "us", &priority, &line);
        if (r < 0) {
                FUNC2(r);
                return 0;
        }

        if (!FUNC6(*our_path, FUNC4(m)))
                return 0;

        if (arg_quiet && FUNC0(priority) >= LOG_INFO)
                return 0;

        FUNC3(priority, "%s", line);
        return 0;
}