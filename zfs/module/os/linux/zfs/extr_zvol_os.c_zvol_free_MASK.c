#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ zv_open_count; struct TYPE_6__* zv_zso; int /*<<< orphan*/  zvo_kstat; int /*<<< orphan*/  zv_state_lock; int /*<<< orphan*/  zvo_dev; TYPE_3__* zvo_disk; int /*<<< orphan*/  zvo_queue; int /*<<< orphan*/  zv_rangelock; int /*<<< orphan*/  zv_suspend_lock; } ;
typedef  TYPE_1__ zvol_state_t ;
struct zvol_state_os {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int ZVOL_MINOR_BITS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zvol_ida ; 

__attribute__((used)) static void
FUNC13(zvol_state_t *zv)
{

	FUNC0(!FUNC3(&zv->zv_suspend_lock));
	FUNC0(!FUNC2(&zv->zv_state_lock));
	FUNC0(zv->zv_open_count == 0);
	FUNC0(zv->zv_zso->zvo_disk->private_data == NULL);

	FUNC11(&zv->zv_suspend_lock);
	FUNC12(&zv->zv_rangelock);

	FUNC6(zv->zv_zso->zvo_disk);
	FUNC4(zv->zv_zso->zvo_queue);
	FUNC10(zv->zv_zso->zvo_disk);

	FUNC7(&zvol_ida,
	    FUNC1(zv->zv_zso->zvo_dev) >> ZVOL_MINOR_BITS);

	FUNC9(&zv->zv_state_lock);
	FUNC5(&zv->zv_zso->zvo_kstat);

	FUNC8(zv->zv_zso, sizeof (struct zvol_state_os));
	FUNC8(zv, sizeof (zvol_state_t));
}