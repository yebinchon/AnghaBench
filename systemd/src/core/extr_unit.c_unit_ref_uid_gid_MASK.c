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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_3__ {int remove_ipc; } ;
typedef  TYPE_1__ ExecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC4(Unit *u, uid_t uid, gid_t gid) {
        ExecContext *c;
        int r;

        FUNC0(u);

        c = FUNC2(u);

        r = FUNC3(u, uid, gid, c ? c->remove_ipc : false);
        if (r < 0)
                return FUNC1(u, r, "Couldn't add UID/GID reference to unit, proceeding without: %m");

        return r;
}