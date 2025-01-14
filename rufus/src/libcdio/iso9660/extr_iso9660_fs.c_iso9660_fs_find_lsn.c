
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsn_t ;
typedef int iso9660_stat_t ;
typedef int iso9660_readdir_t ;
typedef int CdIo_t ;


 int * find_lsn_recurse (int *,int *,char*,int ,char**) ;
 int free (char*) ;
 scalar_t__ iso9660_fs_readdir ;

iso9660_stat_t *
iso9660_fs_find_lsn(CdIo_t *p_cdio, lsn_t i_lsn)
{
  char *psz_full_filename = ((void*)0);
  iso9660_stat_t * p_statbuf;
  p_statbuf = find_lsn_recurse (p_cdio, (iso9660_readdir_t *) iso9660_fs_readdir,
    "/", i_lsn, &psz_full_filename);
  if (psz_full_filename != ((void*)0))
    free(psz_full_filename);
  return p_statbuf;
}
