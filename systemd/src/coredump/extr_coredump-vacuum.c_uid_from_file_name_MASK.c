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
 int EINVAL ; 
 int FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char const*,char*) ; 
 char* FUNC2 (char const*,char) ; 
 char* FUNC3 (char const*,int) ; 

__attribute__((used)) static int FUNC4(const char *filename, uid_t *uid) {
        const char *p, *e, *u;

        p = FUNC1(filename, "core.");
        if (!p)
                return -EINVAL;

        /* Skip the comm field */
        p = FUNC2(p, '.');
        if (!p)
                return -EINVAL;
        p++;

        /* Find end up UID */
        e = FUNC2(p, '.');
        if (!e)
                return -EINVAL;

        u = FUNC3(p, e-p);
        return FUNC0(u, uid);
}