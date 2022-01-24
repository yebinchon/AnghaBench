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
 int FUNC0 (char const*,unsigned int,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,char*,char*) ; 
 int FUNC3 (char***,char*) ; 

__attribute__((used)) static int FUNC4(
                const char *filename, unsigned line,
                const char *key, char *value,
                void *userdata,
                int *n_pushed) {
        char ***m = userdata;
        char *p;
        int r;

        r = FUNC0(filename, line, key, value);
        if (r < 0)
                return r;

        p = FUNC2(key, "=", value);
        if (!p)
                return -ENOMEM;

        r = FUNC3(m, p);
        if (r < 0) {
                FUNC1(p);
                return r;
        }

        if (n_pushed)
                (*n_pushed)++;

        FUNC1(value);
        return 0;
}