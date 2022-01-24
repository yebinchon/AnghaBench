#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* zv_zso; int /*<<< orphan*/  zv_hash; int /*<<< orphan*/  zv_hlink; int /*<<< orphan*/  zv_name; int /*<<< orphan*/  zv_state_lock; } ;
typedef  TYPE_2__ zvol_state_t ;
struct TYPE_4__ {int /*<<< orphan*/  zvo_disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zvol_state_lock ; 

__attribute__((used)) static void
FUNC10(zvol_state_t *zv, const char *newname)
{
	int readonly = FUNC4(zv->zv_zso->zvo_disk);

	FUNC0(FUNC2(&zvol_state_lock));
	FUNC0(FUNC1(&zv->zv_state_lock));

	FUNC8(zv->zv_name, newname, sizeof (zv->zv_name));

	/* move to new hashtable entry  */
	zv->zv_hash = FUNC9(zv->zv_name);
	FUNC6(&zv->zv_hlink);
	FUNC5(&zv->zv_hlink, FUNC3(zv->zv_hash));

	/*
	 * The block device's read-only state is briefly changed causing
	 * a KOBJ_CHANGE uevent to be issued.  This ensures udev detects
	 * the name change and fixes the symlinks.  This does not change
	 * ZVOL_RDONLY in zv->zv_flags so the actual read-only state never
	 * changes.  This would normally be done using kobject_uevent() but
	 * that is a GPL-only symbol which is why we need this workaround.
	 */
	FUNC7(zv->zv_zso->zvo_disk, !readonly);
	FUNC7(zv->zv_zso->zvo_disk, readonly);
}