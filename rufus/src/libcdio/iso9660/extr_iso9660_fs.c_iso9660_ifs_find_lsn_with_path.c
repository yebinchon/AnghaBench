
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsn_t ;
typedef int iso9660_t ;
typedef int iso9660_stat_t ;
typedef int iso9660_readdir_t ;


 int * find_lsn_recurse (int *,int *,char*,int ,char**) ;
 scalar_t__ iso9660_ifs_readdir ;

iso9660_stat_t *
iso9660_ifs_find_lsn_with_path(iso9660_t *p_iso, lsn_t i_lsn,
                  char **ppsz_full_filename)
{
  return find_lsn_recurse (p_iso, (iso9660_readdir_t *) iso9660_ifs_readdir,
      "/", i_lsn, ppsz_full_filename);
}
