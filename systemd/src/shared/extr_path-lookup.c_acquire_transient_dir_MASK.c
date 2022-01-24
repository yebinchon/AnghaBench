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
typedef  scalar_t__ UnitFileScope ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 char** FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ UNIT_FILE_GLOBAL ; 
 scalar_t__ UNIT_FILE_SYSTEM ; 
 int /*<<< orphan*/  UNIT_FILE_USER ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char* FUNC2 (char const*,char*) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (char**,char*) ; 

__attribute__((used)) static int FUNC5(
                UnitFileScope scope,
                const char *tempdir,
                char **ret) {

        char *transient;

        FUNC1(ret);
        FUNC1(FUNC0(scope, UNIT_FILE_SYSTEM, UNIT_FILE_USER, UNIT_FILE_GLOBAL));

        if (scope == UNIT_FILE_GLOBAL)
                return -EOPNOTSUPP;

        if (tempdir)
                transient = FUNC2(tempdir, "transient");
        else if (scope == UNIT_FILE_SYSTEM)
                transient = FUNC3("/run/systemd/transient");
        else
                return FUNC4(ret, "/systemd/transient");

        if (!transient)
                return -ENOMEM;
        *ret = transient;
        return 0;
}