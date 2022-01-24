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
struct TYPE_3__ {char* vdev_path; int /*<<< orphan*/ * vdev_devid_vp; int /*<<< orphan*/ * vdev_name_vp; int /*<<< orphan*/ * vdev_tsd; int /*<<< orphan*/  vdev_spa; } ;
typedef  TYPE_1__ vdev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_STATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(vdev_t *vd)
{
	FUNC0(FUNC1(vd->vdev_spa, SCL_STATE, RW_WRITER));

	/* We must have a pathname, and it must be absolute. */
	if (vd->vdev_path == NULL || vd->vdev_path[0] != '/')
		return;

	/*
	 * Only prefetch path and devid info if the device has
	 * never been opened.
	 */
	if (vd->vdev_tsd != NULL)
		return;

	/* XXX: Implement me as a vnode lookup for the device */
	vd->vdev_name_vp = NULL;
	vd->vdev_devid_vp = NULL;
}