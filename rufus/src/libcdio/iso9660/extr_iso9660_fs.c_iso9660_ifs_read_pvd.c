
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iso9660_t ;
typedef int iso9660_pvd_t ;


 int CDIO_LOG_WARN ;
 int iso9660_ifs_read_pvd_loglevel (int const*,int *,int ) ;

bool
iso9660_ifs_read_pvd (const iso9660_t *p_iso, iso9660_pvd_t *p_pvd)
{
  return iso9660_ifs_read_pvd_loglevel(p_iso, p_pvd, CDIO_LOG_WARN);
}
