
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zrd_hdl; } ;
typedef TYPE_1__ zfs_retire_data_t ;
typedef int fmd_hdl_t ;


 int fmd_hdl_free (int *,TYPE_1__*,int) ;
 TYPE_1__* fmd_hdl_getspecific (int *) ;
 int libzfs_fini (int ) ;
 int zfs_retire_clear_data (int *,TYPE_1__*) ;

void
_zfs_retire_fini(fmd_hdl_t *hdl)
{
 zfs_retire_data_t *zdp = fmd_hdl_getspecific(hdl);

 if (zdp != ((void*)0)) {
  zfs_retire_clear_data(hdl, zdp);
  libzfs_fini(zdp->zrd_hdl);
  fmd_hdl_free(hdl, zdp, sizeof (zfs_retire_data_t));
 }
}
