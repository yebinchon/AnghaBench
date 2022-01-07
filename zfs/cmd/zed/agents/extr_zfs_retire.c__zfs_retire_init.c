
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * zrd_hdl; } ;
typedef TYPE_1__ zfs_retire_data_t ;
typedef int libzfs_handle_t ;
typedef int fmd_hdl_t ;


 int FMD_API_VERSION ;
 int FMD_SLEEP ;
 scalar_t__ fmd_hdl_register (int *,int ,int *) ;
 int fmd_hdl_setspecific (int *,TYPE_1__*) ;
 TYPE_1__* fmd_hdl_zalloc (int *,int,int ) ;
 int fmd_info ;
 int libzfs_fini (int *) ;
 int * libzfs_init () ;

void
_zfs_retire_init(fmd_hdl_t *hdl)
{
 zfs_retire_data_t *zdp;
 libzfs_handle_t *zhdl;

 if ((zhdl = libzfs_init()) == ((void*)0))
  return;

 if (fmd_hdl_register(hdl, FMD_API_VERSION, &fmd_info) != 0) {
  libzfs_fini(zhdl);
  return;
 }

 zdp = fmd_hdl_zalloc(hdl, sizeof (zfs_retire_data_t), FMD_SLEEP);
 zdp->zrd_hdl = zhdl;

 fmd_hdl_setspecific(hdl, zdp);
}
