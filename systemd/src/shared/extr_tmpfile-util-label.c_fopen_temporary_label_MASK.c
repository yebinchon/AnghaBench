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
 int /*<<< orphan*/  S_IFREG ; 
 int FUNC0 (char const*,int /*<<< orphan*/ **,char**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 

int FUNC3(
                const char *target,
                const char *path,
                FILE **f,
                char **temp_path) {

        int r;

        r = FUNC2(target, S_IFREG);
        if (r < 0)
                return r;

        r = FUNC0(path, f, temp_path);

        FUNC1();

        return r;
}