
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lsn_t ;
struct TYPE_5__ {int extent; } ;
struct TYPE_4__ {TYPE_2__ root_directory_record; } ;
typedef TYPE_1__ iso9660_pvd_t ;
typedef TYPE_2__ iso9660_dir_t ;


 int CDIO_INVALID_LSN ;
 int from_733 (int ) ;

lsn_t
iso9660_get_root_lsn(const iso9660_pvd_t *pvd)
{
  if (((void*)0) == pvd)
    return CDIO_INVALID_LSN;
  else {
    const iso9660_dir_t *idr = &(pvd->root_directory_record);
    if (((void*)0) == idr) return CDIO_INVALID_LSN;
    return(from_733 (idr->extent));
  }
}
