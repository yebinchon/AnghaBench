
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iso9660_t ;
typedef int iso9660_pvd_t ;
typedef int cdio_log_level_t ;


 int ISO_PVD_SECTOR ;
 int check_pvd (int *,int ) ;
 scalar_t__ iso9660_iso_seek_read (int const*,int *,int ,int) ;

__attribute__((used)) static bool
iso9660_ifs_read_pvd_loglevel (const iso9660_t *p_iso,
                  iso9660_pvd_t *p_pvd,
          cdio_log_level_t log_level)
{
  if (0 == iso9660_iso_seek_read (p_iso, p_pvd, ISO_PVD_SECTOR, 1)) {


    return 0;
  }
  return check_pvd(p_pvd, log_level);
}
