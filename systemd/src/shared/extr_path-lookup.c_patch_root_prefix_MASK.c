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
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(char **p, const char *root_dir) {
        char *c;

        FUNC0(p);

        if (!*p)
                return 0;

        c = FUNC2(root_dir, *p);
        if (!c)
                return -ENOMEM;

        FUNC1(*p, c);
        return 0;
}