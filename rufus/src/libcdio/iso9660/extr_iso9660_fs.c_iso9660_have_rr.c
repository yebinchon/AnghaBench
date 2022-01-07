
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int iso9660_t ;
typedef char iso9660_stat_t ;
typedef int bool_3way_t ;


 int UINT64_MAX ;
 char* _ifs_stat_root (int *) ;
 int dunno ;
 int free (char*) ;
 int iso_have_rr_traverse (int *,char*,char**,int *) ;
 int nope ;
 char* strdup (char*) ;

extern bool_3way_t
iso9660_have_rr(iso9660_t *p_iso, uint64_t u_file_limit)
{
  iso9660_stat_t *p_root;
  char *p_psz_splitpath[2] = {strdup("/"), strdup("")};
  bool_3way_t is_rr = nope;

  if (!p_iso) return 0;

  p_root = _ifs_stat_root (p_iso);
  if (!p_root) return dunno;

  if (u_file_limit == 0) u_file_limit = UINT64_MAX;

  is_rr = iso_have_rr_traverse (p_iso, p_root, p_psz_splitpath, &u_file_limit);
  free(p_root);
  free(p_psz_splitpath[0]);
  free(p_psz_splitpath[1]);

  return is_rr;
}
