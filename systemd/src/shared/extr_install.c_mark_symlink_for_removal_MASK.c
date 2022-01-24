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
typedef  int /*<<< orphan*/  Set ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  path_hash_ops ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(
                Set **remove_symlinks_to,
                const char *p) {

        char *n;
        int r;

        FUNC0(p);

        r = FUNC3(remove_symlinks_to, &path_hash_ops);
        if (r < 0)
                return r;

        n = FUNC4(p);
        if (!n)
                return -ENOMEM;

        FUNC1(n, false);

        r = FUNC2(*remove_symlinks_to, n);
        if (r == -EEXIST)
                return 0;
        if (r < 0)
                return r;

        return 1;
}