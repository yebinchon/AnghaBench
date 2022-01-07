
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef int nvlist_t ;
struct TYPE_2__ {int * cb_vdev_names; int cb_name_flags; } ;
typedef TYPE_1__ iostat_cbdata_t ;


 int free (char*) ;
 int g_zfs ;
 scalar_t__ strcmp (char*,int ) ;
 char* zpool_vdev_name (int ,int *,int *,int ) ;

__attribute__((used)) static int
is_vdev_cb(zpool_handle_t *zhp, nvlist_t *nv, void *cb_data)
{
 iostat_cbdata_t *cb = cb_data;
 char *name = ((void*)0);
 int ret = 0;

 name = zpool_vdev_name(g_zfs, zhp, nv, cb->cb_name_flags);

 if (strcmp(name, cb->cb_vdev_names[0]) == 0)
  ret = 1;
 free(name);

 return (ret);
}
