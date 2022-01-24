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
typedef  int /*<<< orphan*/ * Manager ;
typedef  int /*<<< orphan*/  Job ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ **,unsigned int) ; 
 int FUNC2 (char const*,unsigned int*) ; 
 char* FUNC3 (char const*,char*) ; 

int FUNC4(Manager *m, const char *s, Job **_j) {
        const char *p;
        unsigned id;
        Job *j;
        int r;

        FUNC0(m);
        FUNC0(s);
        FUNC0(_j);

        p = FUNC3(s, "/org/freedesktop/systemd1/job/");
        if (!p)
                return -EINVAL;

        r = FUNC2(p, &id);
        if (r < 0)
                return r;

        j = FUNC1(m, id);
        if (!j)
                return -ENOENT;

        *_j = j;

        return 0;
}