
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_5__ {int * vdev_enc_sysfs_path; scalar_t__ cols_cnt; scalar_t__ lines_cnt; int * cols; int lines; int cmd; int upath; void* path; void* pool; } ;
typedef TYPE_1__ vdev_cmd_data_t ;
struct TYPE_6__ {int count; int vdev_names_count; int cmd; TYPE_1__* data; void** vdev_names; int cb_name_flags; } ;
typedef TYPE_2__ vdev_cmd_data_list_t ;
typedef int nvlist_t ;


 int ENOMEM ;
 int ZPOOL_CONFIG_PATH ;
 int ZPOOL_CONFIG_VDEV_ENC_SYSFS_PATH ;
 int free (char*) ;
 int g_zfs ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 TYPE_1__* realloc (TYPE_1__*,int) ;
 scalar_t__ strcmp (void*,char*) ;
 void* strdup (char*) ;
 int zfs_get_underlying_path (char*) ;
 char* zpool_get_name (int *) ;
 char* zpool_vdev_name (int ,int *,int *,int ) ;

__attribute__((used)) static int
for_each_vdev_run_cb(zpool_handle_t *zhp, nvlist_t *nv, void *cb_vcdl)
{
 vdev_cmd_data_list_t *vcdl = cb_vcdl;
 vdev_cmd_data_t *data;
 char *path = ((void*)0);
 char *vname = ((void*)0);
 char *vdev_enc_sysfs_path = ((void*)0);
 int i, match = 0;

 if (nvlist_lookup_string(nv, ZPOOL_CONFIG_PATH, &path) != 0)
  return (1);

 nvlist_lookup_string(nv, ZPOOL_CONFIG_VDEV_ENC_SYSFS_PATH,
     &vdev_enc_sysfs_path);


 for (i = 0; i < vcdl->count; i++) {
  if ((strcmp(vcdl->data[i].path, path) == 0) &&
      (strcmp(vcdl->data[i].pool, zpool_get_name(zhp)) == 0)) {

   return (0);
  }
 }


 for (i = 0; i < vcdl->vdev_names_count; i++) {
  vname = zpool_vdev_name(g_zfs, zhp, nv, vcdl->cb_name_flags);
  if (strcmp(vcdl->vdev_names[i], vname) == 0) {
   free(vname);
   match = 1;
   break;
  }
  free(vname);
 }


 if (!match && vcdl->vdev_names_count)
  return (0);




 if (!(vcdl->data = realloc(vcdl->data,
     sizeof (*vcdl->data) * (vcdl->count + 1))))
  return (ENOMEM);

 data = &vcdl->data[vcdl->count];

 data->pool = strdup(zpool_get_name(zhp));
 data->path = strdup(path);
 data->upath = zfs_get_underlying_path(path);
 data->cmd = vcdl->cmd;
 data->lines = data->cols = ((void*)0);
 data->lines_cnt = data->cols_cnt = 0;
 if (vdev_enc_sysfs_path)
  data->vdev_enc_sysfs_path = strdup(vdev_enc_sysfs_path);
 else
  data->vdev_enc_sysfs_path = ((void*)0);

 vcdl->count++;

 return (0);
}
