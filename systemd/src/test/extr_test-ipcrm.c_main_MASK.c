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
typedef  int /*<<< orphan*/  uid_t ;

/* Variables and functions */
 int ESRCH ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  LOG_INFO ; 
 char* NOBODY_USER_NAME ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(int argc, char *argv[]) {
        uid_t uid;
        int r;
        const char* name = argv[1] ?: NOBODY_USER_NAME;

        FUNC4(LOG_INFO);

        r = FUNC1(&name, &uid, NULL, NULL, NULL, 0);
        if (r == -ESRCH)
                return FUNC3("Failed to resolve user");
        if (r < 0) {
                FUNC2(r, "Failed to resolve \"%s\": %m", name);
                return EXIT_FAILURE;
        }

        r = FUNC0(uid);
        return  r < 0 ? EXIT_FAILURE : EXIT_SUCCESS;
}