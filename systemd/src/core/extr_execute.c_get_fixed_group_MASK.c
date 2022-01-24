#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_4__ {char* group; } ;
typedef  TYPE_1__ ExecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int FUNC1 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const ExecContext *c, const char **group, gid_t *gid) {
        int r;
        const char *name;

        FUNC0(c);

        if (!c->group)
                return 0;

        name = c->group;
        r = FUNC1(&name, gid, 0);
        if (r < 0)
                return r;

        *group = name;
        return 0;
}