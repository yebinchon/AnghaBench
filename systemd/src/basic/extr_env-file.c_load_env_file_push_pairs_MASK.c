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
 int FUNC1 (char***,char const*) ; 
 int FUNC2 (char***,char*) ; 

__attribute__((used)) static int FUNC3(
                const char *filename, unsigned line,
                const char *key, char *value,
                void *userdata,
                int *n_pushed) {
        char ***m = userdata;
        int r;

        r = FUNC0(filename, line, key, value);
        if (r < 0)
                return r;

        r = FUNC1(m, key);
        if (r < 0)
                return -ENOMEM;

        if (!value) {
                r = FUNC1(m, "");
                if (r < 0)
                        return -ENOMEM;
        } else {
                r = FUNC2(m, value);
                if (r < 0)
                        return r;
        }

        if (n_pushed)
                (*n_pushed)++;

        return 0;
}