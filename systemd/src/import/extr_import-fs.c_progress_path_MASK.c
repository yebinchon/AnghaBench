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
struct stat {int dummy; } ;
struct TYPE_4__ {scalar_t__ size; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ ProgressInfo ;

/* Variables and functions */
 int EOWNERDEAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ cancelled ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(const char *path, const struct stat *st, void *userdata) {
        ProgressInfo *p = userdata;
        int r;

        FUNC0(p);

        if (cancelled)
                return -EOWNERDEAD;

        r = FUNC1(&p->path, path);
        if (r < 0)
                return r;

        p->size = 0;

        FUNC2(p);
        return 0;
}