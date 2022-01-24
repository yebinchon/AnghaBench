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
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (char*,char const*) ; 
 char* FUNC3 (char const*) ; 

int FUNC4(const char *value, char **console) {
        char *s;
        int r;

        r = value ? FUNC1(value) : 1;
        if (r == 0) {
                *console = NULL;
                return 0;
        } else if (r > 0) /* on with default tty */
                s = FUNC3("/dev/console");
        else if (FUNC0(value)) /* on with fully qualified path */
                s = FUNC3(value);
        else /* on with only a tty file name, not a fully qualified path */
                s = FUNC2("/dev/", value);
        if (!s)
                return -ENOMEM;

        *console = s;
        return 0;
}