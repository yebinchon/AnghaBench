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
typedef  char LookupPaths ;

/* Variables and functions */
 int /*<<< orphan*/  SYSTEM_DATA_UNIT_PATH ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 char* FUNC3 (char const*,char const*) ; 

__attribute__((used)) static int FUNC4(const LookupPaths *p, const char *path) {
        const char *rpath;

        FUNC0(p);
        FUNC0(path);

        rpath = FUNC3(p, path);
        if (!rpath)
                return 0;

        if (FUNC2(rpath, "/usr"))
                return true;

#if HAVE_SPLIT_USR
        if (path_startswith(rpath, "/lib"))
                return true;
#endif

        return FUNC1(rpath, SYSTEM_DATA_UNIT_PATH);
}