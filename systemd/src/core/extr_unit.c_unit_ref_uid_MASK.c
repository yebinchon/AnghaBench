#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
struct TYPE_4__ {int /*<<< orphan*/  ref_uid; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int /*<<< orphan*/  manager_ref_uid ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC1(Unit *u, uid_t uid, bool clean_ipc) {
        return FUNC0(u, &u->ref_uid, uid, clean_ipc, manager_ref_uid);
}