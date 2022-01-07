
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stat_traverse_t ;
typedef int stat_root_t ;
typedef int iso9660_stat_t ;
typedef int CdIo_t ;


 scalar_t__ _fs_stat_root ;
 scalar_t__ _fs_stat_traverse ;
 int * fs_stat_translate (int *,int *,int *,char const*) ;

iso9660_stat_t *
iso9660_fs_stat_translate (CdIo_t *p_cdio, const char psz_path[])
{
  return fs_stat_translate(p_cdio, (stat_root_t *) _fs_stat_root,
      (stat_traverse_t *) _fs_stat_traverse,
      psz_path);
}
