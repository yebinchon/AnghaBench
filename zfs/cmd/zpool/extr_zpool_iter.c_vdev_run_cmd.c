
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* path; char* upath; char* vdev_enc_sysfs_path; } ;
typedef TYPE_1__ vdev_cmd_data_t ;


 int ARRAY_SIZE (char**) ;
 int asprintf (char**,char*,char*) ;
 int free (char*) ;
 int libzfs_free_str_array (char**,int) ;
 int libzfs_run_process_get_stdout_nopath (char*,char**,char**,char***,int*) ;
 scalar_t__ vdev_process_cmd_output (TYPE_1__*,char*) ;

__attribute__((used)) static void
vdev_run_cmd(vdev_cmd_data_t *data, char *cmd)
{
 int rc;
 char *argv[2] = {cmd, 0};
 char *env[5] = {"PATH=/bin:/sbin:/usr/bin:/usr/sbin", ((void*)0), ((void*)0), ((void*)0),
     ((void*)0)};
 char **lines = ((void*)0);
 int lines_cnt = 0;
 int i;


 rc = asprintf(&env[1], "VDEV_PATH=%s",
     data->path ? data->path : "");
 if (rc == -1)
  goto out;

 rc = asprintf(&env[2], "VDEV_UPATH=%s",
     data->upath ? data->upath : "");
 if (rc == -1)
  goto out;

 rc = asprintf(&env[3], "VDEV_ENC_SYSFS_PATH=%s",
     data->vdev_enc_sysfs_path ?
     data->vdev_enc_sysfs_path : "");
 if (rc == -1)
  goto out;


 rc = libzfs_run_process_get_stdout_nopath(cmd, argv, env, &lines,
     &lines_cnt);
 if (rc != 0)
  goto out;


 for (i = 0; i < lines_cnt; i++)
  if (vdev_process_cmd_output(data, lines[i]) != 0)
   break;

out:
 if (lines != ((void*)0))
  libzfs_free_str_array(lines, lines_cnt);


 for (i = 1; i < ARRAY_SIZE(env); i++)
  if (env[i] != ((void*)0))
   free(env[i]);
}
