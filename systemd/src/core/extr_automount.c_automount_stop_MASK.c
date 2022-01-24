#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Automount ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AUTOMOUNT_RUNNING ; 
 int /*<<< orphan*/  AUTOMOUNT_SUCCESS ; 
 int /*<<< orphan*/  AUTOMOUNT_WAITING ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(Unit *u) {
        Automount *a = FUNC0(u);

        FUNC2(a);
        FUNC2(FUNC1(a->state, AUTOMOUNT_WAITING, AUTOMOUNT_RUNNING));

        FUNC3(a, AUTOMOUNT_SUCCESS);
        return 1;
}