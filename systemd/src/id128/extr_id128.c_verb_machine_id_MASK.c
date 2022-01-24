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
typedef  int /*<<< orphan*/  sd_id128_t ;

/* Variables and functions */
 int /*<<< orphan*/  arg_app ; 
 int /*<<< orphan*/  arg_pretty ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(int argc, char **argv, void *userdata) {
        sd_id128_t id;
        int r;

        if (FUNC4(arg_app))
                r = FUNC2(&id);
        else
                r = FUNC3(arg_app, &id);
        if (r < 0)
                return FUNC1(r, "Failed to get %smachine-ID: %m",
                                       FUNC4(arg_app) ? "" : "app-specific ");

        return FUNC0(id, arg_pretty);
}