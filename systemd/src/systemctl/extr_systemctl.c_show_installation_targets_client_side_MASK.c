#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UnitFileFlags ;
struct TYPE_3__ {scalar_t__ type; char* path; } ;
typedef  TYPE_1__ UnitFileChange ;

/* Variables and functions */
 char** FUNC0 (char const*) ; 
 int UNIT_FILE_DRY_RUN ; 
 int UNIT_FILE_RUNTIME ; 
 int /*<<< orphan*/  UNIT_FILE_SYSTEM ; 
 scalar_t__ UNIT_FILE_UNLINK ; 
 scalar_t__ arg_runtime ; 
 int FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char**,TYPE_1__**,size_t*) ; 

__attribute__((used)) static int FUNC4(const char *name) {
        UnitFileChange *changes = NULL;
        size_t n_changes = 0, i;
        UnitFileFlags flags;
        char **p;
        int r;

        p = FUNC0(name);
        flags = UNIT_FILE_DRY_RUN |
                (arg_runtime ? UNIT_FILE_RUNTIME : 0);

        r = FUNC3(UNIT_FILE_SYSTEM, flags, NULL, p, &changes, &n_changes);
        if (r < 0)
                return FUNC1(r, "Failed to get file links for %s: %m", name);

        for (i = 0; i < n_changes; i++)
                if (changes[i].type == UNIT_FILE_UNLINK)
                        FUNC2("  %s\n", changes[i].path);

        return 0;
}