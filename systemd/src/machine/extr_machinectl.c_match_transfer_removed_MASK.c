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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  char const* sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const**) ; 
 int FUNC4 (char const**,char*,int /*<<< orphan*/ *,char const**,char const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*) ; 

__attribute__((used)) static int FUNC7(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        const char **our_path = userdata, *path, *result;
        uint32_t id;
        int r;

        FUNC0(m);
        FUNC0(our_path);

        r = FUNC4(m, "uos", &id, &path, &result);
        if (r < 0) {
                FUNC1(r);
                return 0;
        }

        if (!FUNC6(*our_path, path))
                return 0;

        FUNC5(FUNC2(FUNC3(m)), !FUNC6(result, "done"));
        return 0;
}