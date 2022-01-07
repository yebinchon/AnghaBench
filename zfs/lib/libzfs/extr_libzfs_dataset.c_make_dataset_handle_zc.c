
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int zfs_name; int * zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_10__ {int zc_name; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int libzfs_handle_t ;


 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int make_dataset_handle_common (TYPE_1__*,TYPE_2__*) ;
 int strlcpy (int ,int ,int) ;

zfs_handle_t *
make_dataset_handle_zc(libzfs_handle_t *hdl, zfs_cmd_t *zc)
{
 zfs_handle_t *zhp = calloc(1, sizeof (zfs_handle_t));

 if (zhp == ((void*)0))
  return (((void*)0));

 zhp->zfs_hdl = hdl;
 (void) strlcpy(zhp->zfs_name, zc->zc_name, sizeof (zhp->zfs_name));
 if (make_dataset_handle_common(zhp, zc) == -1) {
  free(zhp);
  return (((void*)0));
 }
 return (zhp);
}
