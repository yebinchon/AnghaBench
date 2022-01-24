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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  load_env_file_push_pairs ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char***,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 

int FUNC2(FILE *f, const char *fname, char ***rl) {
        char **m = NULL;
        int r;

        r = FUNC0(f, fname, load_env_file_push_pairs, &m, NULL);
        if (r < 0) {
                FUNC1(m);
                return r;
        }

        *rl = m;
        return 0;
}