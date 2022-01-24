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
 int EINVAL ; 
 int ENOMEM ; 
 char* FUNC0 (char const*,char*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*,int) ; 

int FUNC3(const char *name, char **ret) {
        const char *e;
        char *s;

        e = FUNC0(name, ".tar");
        if (!e)
                e = FUNC0(name, ".tar.xz");
        if (!e)
                e = FUNC0(name, ".tar.gz");
        if (!e)
                e = FUNC0(name, ".tar.bz2");
        if (!e)
                e = FUNC0(name, ".tgz");
        if (!e)
                e = FUNC1(name, 0);

        if (e <= name)
                return -EINVAL;

        s = FUNC2(name, e - name);
        if (!s)
                return -ENOMEM;

        *ret = s;
        return 0;
}