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
typedef  scalar_t__ UnitFileState ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 scalar_t__ UNIT_FILE_DISABLED ; 
 scalar_t__ UNIT_FILE_STATIC ; 
 int /*<<< orphan*/  UNIT_FILE_SYSTEM ; 
 int /*<<< orphan*/  WRITE_STRING_FILE_CREATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,char*,scalar_t__*) ; 
 scalar_t__ FUNC4 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const char *root) {
        UnitFileState state;
        const char *p;

        FUNC0(FUNC3(UNIT_FILE_SYSTEM, root, "static-instance@.service", &state) == -ENOENT);
        FUNC0(FUNC3(UNIT_FILE_SYSTEM, root, "static-instance@foo.service", &state) == -ENOENT);

        p = FUNC1(root, "/usr/lib/systemd/system/static-instance@.service");
        FUNC0(FUNC4(p,
                                    "[Install]\n"
                                    "WantedBy=multi-user.target\n", WRITE_STRING_FILE_CREATE) >= 0);

        FUNC0(FUNC3(UNIT_FILE_SYSTEM, root, "static-instance@.service", &state) >= 0 && state == UNIT_FILE_DISABLED);
        FUNC0(FUNC3(UNIT_FILE_SYSTEM, root, "static-instance@foo.service", &state) >= 0 && state == UNIT_FILE_DISABLED);

        p = FUNC1(root, "/usr/lib/systemd/system/static-instance@foo.service");
        FUNC0(FUNC2("static-instance@.service", p) >= 0);

        FUNC0(FUNC3(UNIT_FILE_SYSTEM, root, "static-instance@.service", &state) >= 0 && state == UNIT_FILE_DISABLED);
        FUNC0(FUNC3(UNIT_FILE_SYSTEM, root, "static-instance@foo.service", &state) >= 0 && state == UNIT_FILE_STATIC);
}