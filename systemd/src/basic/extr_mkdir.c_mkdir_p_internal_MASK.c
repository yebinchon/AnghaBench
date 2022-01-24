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
typedef  int /*<<< orphan*/  mode_t ;
typedef  int (* mkdir_func_t ) (char const*,int /*<<< orphan*/ ) ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*,int) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,char const*,int /*<<< orphan*/ ,int (*) (char const*,int /*<<< orphan*/ )) ; 

int FUNC4(const char *prefix, const char *path, mode_t mode, mkdir_func_t _mkdir) {
        int r;

        /* Like mkdir -p */

        FUNC0(_mkdir != mkdir);

        r = FUNC3(prefix, path, mode, _mkdir);
        if (r < 0)
                return r;

        r = _mkdir(path, mode);
        if (r < 0 && (r != -EEXIST || FUNC1(path, true) <= 0))
                return r;

        return 0;
}