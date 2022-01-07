
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * (* stat_traverse_t ) (void*,int *,char**) ;
typedef int * (* stat_root_t ) (void*) ;
typedef int iso9660_stat_t ;


 int _cdio_strfreev (char**) ;
 char** _cdio_strsplit (char const*,char) ;
 int free (int *) ;

__attribute__((used)) static iso9660_stat_t *
fs_stat_translate (void *p_image, stat_root_t stat_root,
     stat_traverse_t stat_traverse,
     const char psz_path[])
{
  iso9660_stat_t *p_root;
  char **p_psz_splitpath;
  iso9660_stat_t *p_stat;

  if (!p_image) return ((void*)0);
  if (!psz_path) return ((void*)0);

  p_root = stat_root (p_image);
  if (!p_root) return ((void*)0);

  p_psz_splitpath = _cdio_strsplit (psz_path, '/');
  p_stat = stat_traverse (p_image, p_root, p_psz_splitpath);
  free(p_root);
  _cdio_strfreev (p_psz_splitpath);

  return p_stat;
}
