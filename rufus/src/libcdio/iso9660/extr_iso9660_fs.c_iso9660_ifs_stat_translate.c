
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stat_traverse_t ;
typedef int stat_root_t ;
typedef int iso9660_t ;
typedef int iso9660_stat_t ;


 scalar_t__ _fs_iso_stat_traverse ;
 scalar_t__ _ifs_stat_root ;
 int * fs_stat_translate (int *,int *,int *,char const*) ;

iso9660_stat_t *
iso9660_ifs_stat_translate (iso9660_t *p_iso, const char psz_path[])
{
  return fs_stat_translate(p_iso, (stat_root_t *) _ifs_stat_root,
      (stat_traverse_t *) _fs_iso_stat_traverse,
      psz_path);
}
