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
typedef  int /*<<< orphan*/  Unit ;
typedef  int /*<<< orphan*/  Manager ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  FDSet ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int,char*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(Manager *m, const char *name, FILE *f, FDSet *fds) {
        Unit *u;
        int r;

        r = FUNC1(m, name, NULL, NULL, &u);
        if (r < 0) {
                if (r == -ENOMEM)
                        return r;
                return FUNC0(r, "Failed to load unit \"%s\", skipping deserialization: %m", name);
        }

        r = FUNC2(u, f, fds);
        if (r < 0) {
                if (r == -ENOMEM)
                        return r;
                return FUNC0(r, "Failed to deserialize unit \"%s\", skipping: %m", name);
        }

        return 0;
}