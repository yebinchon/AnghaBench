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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  OutputFlags ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,char const*,char const*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,char const*,char const*,size_t,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ) ; 

int FUNC3(
                const char *controller,
                const char *path,
                const char *prefix,
                size_t n_columns,
                const pid_t extra_pids[],
                unsigned n_extra_pids,
                OutputFlags flags) {

        int r;

        FUNC0(path);

        r = FUNC1(controller, path, prefix, n_columns, flags);
        if (r < 0)
                return r;

        return FUNC2(controller, path, prefix, n_columns, extra_pids, n_extra_pids, flags);
}