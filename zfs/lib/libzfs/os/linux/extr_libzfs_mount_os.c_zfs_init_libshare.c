
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int libzfs_shareflags; int * libzfs_sharehdl; } ;
typedef TYPE_1__ libzfs_handle_t ;


 int SA_NO_MEMORY ;
 int SA_OK ;
 int ZFSSHARE_MISS ;
 void* sa_init (int) ;
 scalar_t__ sa_needs_refresh (int *) ;
 int zfs_uninit_libshare (TYPE_1__*) ;

int
zfs_init_libshare(libzfs_handle_t *zhandle, int service)
{
 int ret = SA_OK;

 if (ret == SA_OK && zhandle->libzfs_shareflags & ZFSSHARE_MISS) {
  zhandle->libzfs_shareflags &= ~ZFSSHARE_MISS;
  if (sa_needs_refresh(zhandle->libzfs_sharehdl)) {
   zfs_uninit_libshare(zhandle);
   zhandle->libzfs_sharehdl = sa_init(service);
  }
 }

 if (ret == SA_OK && zhandle && zhandle->libzfs_sharehdl == ((void*)0))
  zhandle->libzfs_sharehdl = sa_init(service);

 if (ret == SA_OK && zhandle->libzfs_sharehdl == ((void*)0))
  ret = SA_NO_MEMORY;
 return (ret);
}
