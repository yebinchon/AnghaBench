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

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char** FUNC4 (char const*) ; 
 char* FUNC5 (char const*,char const*) ; 
 char* FUNC6 (char const*,char) ; 

int FUNC7(const char *path, const char *prefix, char **ret_sender, char **ret_external) {
        const char *p, *q;
        char *sender, *external;

        FUNC0(FUNC4(path));
        FUNC0(FUNC4(prefix));
        FUNC0(ret_sender);
        FUNC0(ret_external);

        p = FUNC5(path, prefix);
        if (!p) {
                *ret_sender = NULL;
                *ret_external = NULL;
                return 0;
        }

        q = FUNC6(p, '/');
        if (!q) {
                *ret_sender = NULL;
                *ret_external = NULL;
                return 0;
        }

        sender = FUNC2(p, q - p);
        external = FUNC1(q + 1);
        if (!sender || !external) {
                FUNC3(sender);
                FUNC3(external);
                return -ENOMEM;
        }

        *ret_sender = sender;
        *ret_external = external;
        return 1;
}