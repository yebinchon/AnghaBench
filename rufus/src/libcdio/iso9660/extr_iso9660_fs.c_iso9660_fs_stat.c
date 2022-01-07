
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iso9660_stat_t ;
typedef int CdIo_t ;


 int _cdio_strfreev (char**) ;
 char** _cdio_strsplit (char const*,char) ;
 int * _fs_stat_root (int *) ;
 int * _fs_stat_traverse (int *,int *,char**) ;
 int free (int *) ;

iso9660_stat_t *
iso9660_fs_stat (CdIo_t *p_cdio, const char psz_path[])
{
  iso9660_stat_t *p_root;
  char **p_psz_splitpath;
  iso9660_stat_t *p_stat;

  if (!p_cdio) return ((void*)0);
  if (!psz_path) return ((void*)0);

  p_root = _fs_stat_root (p_cdio);

  if (!p_root) return ((void*)0);

  p_psz_splitpath = _cdio_strsplit (psz_path, '/');
  p_stat = _fs_stat_traverse (p_cdio, p_root, p_psz_splitpath);
  free(p_root);
  _cdio_strfreev (p_psz_splitpath);

  return p_stat;
}
