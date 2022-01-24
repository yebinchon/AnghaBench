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
struct TYPE_3__ {int /*<<< orphan*/  will_process; int /*<<< orphan*/  have_processed; } ;
typedef  TYPE_1__ InstallContext ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static UnitFileInstallInfo *FUNC1(InstallContext *c, const char *name) {
        UnitFileInstallInfo *i;

        i = FUNC0(c->have_processed, name);
        if (i)
                return i;

        return FUNC0(c->will_process, name);
}