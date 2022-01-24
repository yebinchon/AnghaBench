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
struct utsname {int /*<<< orphan*/  release; } ;

/* Variables and functions */
 int ENOMEM ; 
 int errno ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct utsname*) ; 

int FUNC2(char specifier, const void *data, const void *userdata, char **ret) {
        struct utsname uts;
        char *n;
        int r;

        r = FUNC1(&uts);
        if (r < 0)
                return -errno;

        n = FUNC0(uts.release);
        if (!n)
                return -ENOMEM;

        *ret = n;
        return 0;
}