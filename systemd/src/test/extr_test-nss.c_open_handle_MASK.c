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

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,char const*,char const*,...) ; 

__attribute__((used)) static void* FUNC5(const char* dir, const char* module, int flags) {
        const char *path = NULL;
        void *handle;

        if (dir)
                path = FUNC4(dir, "/libnss_", module, ".so.2");
        if (!path || FUNC0(path, F_OK) < 0)
                path = FUNC4("libnss_", module, ".so.2");

        handle = FUNC2(path, flags);
        if (!handle)
                FUNC3("Failed to load module %s: %s", module, FUNC1());
        return handle;
}