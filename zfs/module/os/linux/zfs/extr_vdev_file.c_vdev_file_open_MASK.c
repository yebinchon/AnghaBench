#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ v_type; } ;
typedef  TYPE_2__ vnode_t ;
struct TYPE_11__ {void* vs_aux; } ;
struct TYPE_13__ {char* vdev_path; int vdev_reopening; TYPE_1__ vdev_stat; int /*<<< orphan*/  vdev_spa; TYPE_4__* vdev_tsd; int /*<<< orphan*/  vdev_has_securetrim; void* vdev_has_trim; void* vdev_nonrot; } ;
typedef  TYPE_3__ vdev_t ;
struct TYPE_14__ {TYPE_2__* vf_vnode; } ;
typedef  TYPE_4__ vdev_file_t ;
struct TYPE_15__ {int /*<<< orphan*/  va_size; int /*<<< orphan*/  va_mask; } ;
typedef  TYPE_5__ vattr_t ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AT_SIZE ; 
 int /*<<< orphan*/  B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 int FOFFMAX ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_MINBLOCKSHIFT ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 void* VDEV_AUX_BAD_LABEL ; 
 void* VDEV_AUX_OPEN_FAILED ; 
 int FUNC2 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  kcred ; 
 TYPE_4__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rootdir ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(vdev_t *vd, uint64_t *psize, uint64_t *max_psize,
    uint64_t *ashift)
{
	vdev_file_t *vf;
	vnode_t *vp;
	vattr_t vattr;
	int error;

	/*
	 * Rotational optimizations only make sense on block devices.
	 */
	vd->vdev_nonrot = B_TRUE;

	/*
	 * Allow TRIM on file based vdevs.  This may not always be supported,
	 * since it depends on your kernel version and underlying filesystem
	 * type but it is always safe to attempt.
	 */
	vd->vdev_has_trim = B_TRUE;

	/*
	 * Disable secure TRIM on file based vdevs.  There is no way to
	 * request this behavior from the underlying filesystem.
	 */
	vd->vdev_has_securetrim = B_FALSE;

	/*
	 * We must have a pathname, and it must be absolute.
	 */
	if (vd->vdev_path == NULL || vd->vdev_path[0] != '/') {
		vd->vdev_stat.vs_aux = VDEV_AUX_BAD_LABEL;
		return (FUNC1(EINVAL));
	}

	/*
	 * Reopen the device if it's not currently open.  Otherwise,
	 * just update the physical size of the device.
	 */
	if (vd->vdev_tsd != NULL) {
		FUNC0(vd->vdev_reopening);
		vf = vd->vdev_tsd;
		goto skip_open;
	}

	vf = vd->vdev_tsd = FUNC3(sizeof (vdev_file_t), KM_SLEEP);

	/*
	 * We always open the files from the root of the global zone, even if
	 * we're in a local zone.  If the user has gotten to this point, the
	 * administrator has already decided that the pool should be available
	 * to local zone users, so the underlying devices should be as well.
	 */
	FUNC0(vd->vdev_path != NULL && vd->vdev_path[0] == '/');
	error = FUNC5(vd->vdev_path + 1, UIO_SYSSPACE,
	    FUNC4(vd->vdev_spa) | FOFFMAX, 0, &vp, 0, 0, rootdir, -1);

	if (error) {
		vd->vdev_stat.vs_aux = VDEV_AUX_OPEN_FAILED;
		return (error);
	}

	vf->vf_vnode = vp;

#ifdef _KERNEL
	/*
	 * Make sure it's a regular file.
	 */
	if (vp->v_type != VREG) {
		vd->vdev_stat.vs_aux = VDEV_AUX_OPEN_FAILED;
		return (SET_ERROR(ENODEV));
	}
#endif

skip_open:
	/*
	 * Determine the physical size of the file.
	 */
	vattr.va_mask = AT_SIZE;
	error = FUNC2(vf->vf_vnode, &vattr, 0, kcred, NULL);
	if (error) {
		vd->vdev_stat.vs_aux = VDEV_AUX_OPEN_FAILED;
		return (error);
	}

	*max_psize = *psize = vattr.va_size;
	*ashift = SPA_MINBLOCKSHIFT;

	return (0);
}