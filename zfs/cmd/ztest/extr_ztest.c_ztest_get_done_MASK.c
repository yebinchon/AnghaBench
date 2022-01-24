#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ztest_ds_t ;
struct TYPE_7__ {scalar_t__ zgd_lr; scalar_t__ zgd_db; int /*<<< orphan*/ * zgd_private; } ;
typedef  TYPE_1__ zgd_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {int /*<<< orphan*/  rl_object; } ;
typedef  TYPE_2__ rl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(zgd_t *zgd, int error)
{
	ztest_ds_t *zd = zgd->zgd_private;
	uint64_t object = ((rl_t *)zgd->zgd_lr)->rl_object;

	if (zgd->zgd_db)
		FUNC0(zgd->zgd_db, zgd);

	FUNC3((rl_t *)zgd->zgd_lr);
	FUNC2(zd, object);

	FUNC1(zgd, sizeof (*zgd));
}