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
 int EEXIST ; 
 int /*<<< orphan*/  arg_dest ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int errno ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (char const*,char const*) ; 

__attribute__((used)) static int FUNC3(const char *service, const char *alias) {
        const char *link;
        int r;

        FUNC0(service);
        FUNC0(alias);

        link = FUNC1(arg_dest, alias);

        r = FUNC2(service, link);
        if (r < 0) {
                if (errno == EEXIST)
                        return 0;

                return -errno;
        }

        return 1;
}