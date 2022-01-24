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
typedef  int /*<<< orphan*/  UnitFileScope ;
typedef  int /*<<< orphan*/  UnitFileInstallInfo ;
typedef  int /*<<< orphan*/  UnitFileChange ;
typedef  int /*<<< orphan*/  SearchFlags ;
typedef  int /*<<< orphan*/  LookupPaths ;
typedef  int /*<<< orphan*/  InstallContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,size_t*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ **,size_t*) ; 

__attribute__((used)) static int FUNC2(
                        UnitFileScope scope,
                        InstallContext *c,
                        const LookupPaths *paths,
                        const char *name,
                        SearchFlags flags,
                        UnitFileInstallInfo **ret,
                        UnitFileChange **changes,
                        size_t *n_changes) {

        int r;

        r = FUNC0(scope, c, paths, name, flags, ret, changes, n_changes);
        if (r < 0)
                return r;

        return FUNC1(ret ? *ret : NULL, paths, changes, n_changes);
}