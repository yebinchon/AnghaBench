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
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char const*,char const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(const char *field, const char *root, const char *p, int *ret_status) {
        int status = FUNC2(root, p);

        FUNC3("%13s%s ", FUNC4(field), field ? ":" : " ");
        if (status < 0) {
                errno = -status;
                FUNC3("%s%s%s (%m)\n", FUNC0(), p, FUNC1());
        } else
                FUNC3("%s\n", p);

        if (*ret_status == 0 && status < 0)
                *ret_status = status;
}