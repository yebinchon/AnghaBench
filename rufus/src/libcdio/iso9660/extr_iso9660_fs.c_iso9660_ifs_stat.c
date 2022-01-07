
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iso9660_t ;
typedef int iso9660_stat_t ;


 int _cdio_strfreev (char**) ;
 char** _cdio_strsplit (char const*,char) ;
 int * _fs_iso_stat_traverse (int *,int *,char**) ;
 int * _ifs_stat_root (int *) ;
 int free (int *) ;

iso9660_stat_t *
iso9660_ifs_stat (iso9660_t *p_iso, const char psz_path[])
{
  iso9660_stat_t *p_root;
  char **splitpath;
  iso9660_stat_t *stat;

  if (!p_iso) return ((void*)0);
  if (!psz_path) return ((void*)0);

  p_root = _ifs_stat_root (p_iso);
  if (!p_root) return ((void*)0);

  splitpath = _cdio_strsplit (psz_path, '/');
  stat = _fs_iso_stat_traverse (p_iso, p_root, splitpath);
  free(p_root);
  _cdio_strfreev (splitpath);

  return stat;
}
