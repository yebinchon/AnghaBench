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
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  uio_seg_t ;
struct TYPE_3__ {int /*<<< orphan*/  scd_path; } ;
typedef  TYPE_1__ spa_config_dirent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FSYNC ; 
 int FTRUNC ; 
 int FWRITE ; 
 int /*<<< orphan*/  RMFILE ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kcred ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(spa_config_dirent_t *dp)
{
#if defined(__linux__) && defined(_KERNEL)
	int error, flags = FWRITE | FTRUNC;
	uio_seg_t seg = UIO_SYSSPACE;
	vnode_t *vp;

	error = vn_open(dp->scd_path, seg, flags, 0644, &vp, 0, 0);
	if (error == 0) {
		(void) VOP_FSYNC(vp, FSYNC, kcred, NULL);
		(void) VOP_CLOSE(vp, 0, 1, 0, kcred, NULL);
	}

	return (error);
#else
	return (FUNC3(dp->scd_path, UIO_SYSSPACE, RMFILE));
#endif
}