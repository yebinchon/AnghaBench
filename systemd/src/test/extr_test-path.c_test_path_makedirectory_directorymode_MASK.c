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
struct stat {int st_mode; } ;
typedef  int /*<<< orphan*/  Unit ;
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 int REMOVE_PHYSICAL ; 
 int REMOVE_ROOT ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IRWXU ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 scalar_t__ FUNC4 (char const*,struct stat*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(Manager *m) {
        const char *test_path = "/tmp/test-path_makedirectory/";
        Unit *unit = NULL;
        struct stat s;

        FUNC1(*m);

        FUNC1(FUNC0(test_path, F_OK) < 0);

        FUNC1(FUNC2(m, "path-makedirectory.path", NULL, &unit) >= 0);
        FUNC1(FUNC5(unit) >= 0);

        /* Check if the directory has been created */
        FUNC1(FUNC0(test_path, F_OK) >= 0);

        /* Check the mode we specified with DirectoryMode=0744 */
        FUNC1(FUNC4(test_path, &s) >= 0);
        FUNC1((s.st_mode & S_IRWXU) == 0700);
        FUNC1((s.st_mode & S_IRWXG) == 0040);
        FUNC1((s.st_mode & S_IRWXO) == 0004);

        FUNC1(FUNC6(unit) >= 0);
        (void) FUNC3(test_path, REMOVE_ROOT|REMOVE_PHYSICAL);
}