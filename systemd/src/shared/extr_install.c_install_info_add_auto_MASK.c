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
typedef  int /*<<< orphan*/  UnitFileInstallInfo ;
struct TYPE_3__ {int /*<<< orphan*/  root_dir; } ;
typedef  TYPE_1__ LookupPaths ;
typedef  char const InstallContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,char const*,char const*,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC4(
                InstallContext *c,
                const LookupPaths *paths,
                const char *name_or_path,
                UnitFileInstallInfo **ret) {

        FUNC0(c);
        FUNC0(name_or_path);

        if (FUNC2(name_or_path)) {
                const char *pp;

                pp = FUNC3(paths->root_dir, name_or_path);

                return FUNC1(c, NULL, pp, false, ret);
        } else
                return FUNC1(c, name_or_path, NULL, false, ret);
}