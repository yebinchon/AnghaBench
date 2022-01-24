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
struct TYPE_4__ {int has_prefix; int /*<<< orphan*/  path_malloc; } ;
typedef  TYPE_1__ MountEntry ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(MountEntry *m, size_t n, const char *root_directory) {
        size_t i;

        /* Prefixes all paths in the bind mount table with the root directory if the entry needs that. */

        for (i = 0; i < n; i++) {
                char *s;

                if (m[i].has_prefix)
                        continue;

                s = FUNC2(root_directory, FUNC1(m+i));
                if (!s)
                        return -ENOMEM;

                FUNC0(m[i].path_malloc, s);
                m[i].has_prefix = true;
        }

        return 0;
}