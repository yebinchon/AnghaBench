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
struct TYPE_4__ {char* path; char* upath; char* vdev_enc_sysfs_path; } ;
typedef  TYPE_1__ vdev_cmd_data_t ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int FUNC1 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,int) ; 
 int FUNC4 (char*,char**,char**,char***,int*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,char*) ; 

__attribute__((used)) static void
FUNC6(vdev_cmd_data_t *data, char *cmd)
{
	int rc;
	char *argv[2] = {cmd, 0};
	char *env[5] = {"PATH=/bin:/sbin:/usr/bin:/usr/sbin", NULL, NULL, NULL,
	    NULL};
	char **lines = NULL;
	int lines_cnt = 0;
	int i;

	/* Setup our custom environment variables */
	rc = FUNC1(&env[1], "VDEV_PATH=%s",
	    data->path ? data->path : "");
	if (rc == -1)
		goto out;

	rc = FUNC1(&env[2], "VDEV_UPATH=%s",
	    data->upath ? data->upath : "");
	if (rc == -1)
		goto out;

	rc = FUNC1(&env[3], "VDEV_ENC_SYSFS_PATH=%s",
	    data->vdev_enc_sysfs_path ?
	    data->vdev_enc_sysfs_path : "");
	if (rc == -1)
		goto out;

	/* Run the command */
	rc = FUNC4(cmd, argv, env, &lines,
	    &lines_cnt);
	if (rc != 0)
		goto out;

	/* Process the output we got */
	for (i = 0; i < lines_cnt; i++)
		if (FUNC5(data, lines[i]) != 0)
			break;

out:
	if (lines != NULL)
		FUNC3(lines, lines_cnt);

	/* Start with i = 1 since env[0] was statically allocated */
	for (i = 1; i < FUNC0(env); i++)
		if (env[i] != NULL)
			FUNC2(env[i]);
}