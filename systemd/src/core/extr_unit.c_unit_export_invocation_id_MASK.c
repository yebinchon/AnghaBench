#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int exported_invocation_id; int /*<<< orphan*/  invocation_id_string; int /*<<< orphan*/  id; int /*<<< orphan*/  invocation_id; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int,char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC5(Unit *u) {
        const char *p;
        int r;

        FUNC0(u);

        if (u->exported_invocation_id)
                return 0;

        if (FUNC2(u->invocation_id))
                return 0;

        p = FUNC3("/run/systemd/units/invocation:", u->id);
        r = FUNC4(u->invocation_id_string, p);
        if (r < 0)
                return FUNC1(u, r, "Failed to create invocation ID symlink %s: %m", p);

        u->exported_invocation_id = true;
        return 0;
}