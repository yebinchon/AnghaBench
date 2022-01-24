#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_handle_t ;
struct TYPE_5__ {int /*<<< orphan*/ * vdev_enc_sysfs_path; scalar_t__ cols_cnt; scalar_t__ lines_cnt; int /*<<< orphan*/ * cols; int /*<<< orphan*/  lines; int /*<<< orphan*/  cmd; int /*<<< orphan*/  upath; void* path; void* pool; } ;
typedef  TYPE_1__ vdev_cmd_data_t ;
struct TYPE_6__ {int count; int vdev_names_count; int /*<<< orphan*/  cmd; TYPE_1__* data; void** vdev_names; int /*<<< orphan*/  cb_name_flags; } ;
typedef  TYPE_2__ vdev_cmd_data_list_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_PATH ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_ENC_SYSFS_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  g_zfs ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (void*,char*) ; 
 void* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(zpool_handle_t *zhp, nvlist_t *nv, void *cb_vcdl)
{
	vdev_cmd_data_list_t *vcdl = cb_vcdl;
	vdev_cmd_data_t *data;
	char *path = NULL;
	char *vname = NULL;
	char *vdev_enc_sysfs_path = NULL;
	int i, match = 0;

	if (FUNC1(nv, ZPOOL_CONFIG_PATH, &path) != 0)
		return (1);

	FUNC1(nv, ZPOOL_CONFIG_VDEV_ENC_SYSFS_PATH,
	    &vdev_enc_sysfs_path);

	/* Spares show more than once if they're in use, so skip if exists */
	for (i = 0; i < vcdl->count; i++) {
		if ((FUNC3(vcdl->data[i].path, path) == 0) &&
		    (FUNC3(vcdl->data[i].pool, FUNC6(zhp)) == 0)) {
			/* vdev already exists, skip it */
			return (0);
		}
	}

	/* Check for whitelisted vdevs here, if any */
	for (i = 0; i < vcdl->vdev_names_count; i++) {
		vname = FUNC7(g_zfs, zhp, nv, vcdl->cb_name_flags);
		if (FUNC3(vcdl->vdev_names[i], vname) == 0) {
			FUNC0(vname);
			match = 1;
			break; /* match */
		}
		FUNC0(vname);
	}

	/* If we whitelisted vdevs, and this isn't one of them, then bail out */
	if (!match && vcdl->vdev_names_count)
		return (0);

	/*
	 * Resize our array and add in the new element.
	 */
	if (!(vcdl->data = FUNC2(vcdl->data,
	    sizeof (*vcdl->data) * (vcdl->count + 1))))
		return (ENOMEM);	/* couldn't realloc */

	data = &vcdl->data[vcdl->count];

	data->pool = FUNC4(FUNC6(zhp));
	data->path = FUNC4(path);
	data->upath = FUNC5(path);
	data->cmd = vcdl->cmd;
	data->lines = *(data->cols = NULL);
	data->lines_cnt = data->cols_cnt = 0;
	if (vdev_enc_sysfs_path)
		data->vdev_enc_sysfs_path = FUNC4(vdev_enc_sysfs_path);
	else
		data->vdev_enc_sysfs_path = NULL;

	vcdl->count++;

	return (0);
}