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
struct TYPE_3__ {int /*<<< orphan*/  sa_lock; int /*<<< orphan*/ * sa_spill_tab; int /*<<< orphan*/ * sa_spill; int /*<<< orphan*/  sa_os; } ;
typedef  TYPE_1__ sa_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC4(sa_handle_t *hdl)
{
	FUNC1(&hdl->sa_lock);
	if (hdl->sa_spill) {
		FUNC3(hdl->sa_os, hdl->sa_spill_tab);
		FUNC0(hdl->sa_spill, NULL);
		hdl->sa_spill = NULL;
		hdl->sa_spill_tab = NULL;
	}
	FUNC2(&hdl->sa_lock);
}