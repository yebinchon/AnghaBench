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
struct TYPE_4__ {int /*<<< orphan*/ * vdev_path; scalar_t__ vdev_guid; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 

__attribute__((used)) static void
FUNC4(vdev_t *svd, vdev_t *dvd)
{
	if (svd->vdev_path != NULL && dvd->vdev_path != NULL) {
		if (FUNC2(svd->vdev_path, dvd->vdev_path) != 0) {
			FUNC3("vdev_copy_path: vdev %llu: path changed "
			    "from '%s' to '%s'", (u_longlong_t)dvd->vdev_guid,
			    dvd->vdev_path, svd->vdev_path);
			FUNC1(dvd->vdev_path);
			dvd->vdev_path = FUNC0(svd->vdev_path);
		}
	} else if (svd->vdev_path != NULL) {
		dvd->vdev_path = FUNC0(svd->vdev_path);
		FUNC3("vdev_copy_path: vdev %llu: path set to '%s'",
		    (u_longlong_t)dvd->vdev_guid, dvd->vdev_path);
	}
}