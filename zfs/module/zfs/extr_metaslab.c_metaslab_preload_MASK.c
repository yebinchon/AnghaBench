#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_7__ {int /*<<< orphan*/  ms_lock; TYPE_1__* ms_group; } ;
typedef  TYPE_2__ metaslab_t ;
struct TYPE_8__ {int /*<<< orphan*/ * mc_spa; } ;
typedef  TYPE_3__ metaslab_class_t ;
typedef  int /*<<< orphan*/  fstrans_cookie_t ;
struct TYPE_6__ {int /*<<< orphan*/  mg_lock; TYPE_3__* mg_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	metaslab_t *msp = arg;
	metaslab_class_t *mc = msp->ms_group->mg_class;
	spa_t *spa = mc->mc_spa;
	fstrans_cookie_t cookie = FUNC7();

	FUNC0(!FUNC1(&msp->ms_group->mg_lock));

	FUNC4(&msp->ms_lock);
	(void) FUNC2(msp);
	FUNC3(msp, FUNC6(spa));
	FUNC5(&msp->ms_lock);
	FUNC8(cookie);
}