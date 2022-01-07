
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int i_part_start; } ;
typedef TYPE_1__ udf_t ;
struct TYPE_10__ {int info_len; } ;
typedef TYPE_2__ udf_file_entry_t ;
struct TYPE_11__ {int b_dir; int b_parent; int i_loc_end; int i_loc; int fe; int dir_left; int i_part_start; TYPE_1__* p_udf; int psz_name; } ;
typedef TYPE_3__ udf_dirent_t ;


 scalar_t__ calloc (int,int) ;
 int memcpy (int *,TYPE_2__*,int) ;
 int strdup (char const*) ;
 int udf_get_lba (TYPE_2__*,int *,int *) ;
 int uint64_from_le (int ) ;

__attribute__((used)) static udf_dirent_t *
udf_new_dirent(udf_file_entry_t *p_udf_fe, udf_t *p_udf,
        const char *psz_name, bool b_dir, bool b_parent)
{
  udf_dirent_t *p_udf_dirent = (udf_dirent_t *)
    calloc(1, sizeof(udf_dirent_t));
  if (!p_udf_dirent) return ((void*)0);

  p_udf_dirent->psz_name = strdup(psz_name);
  p_udf_dirent->b_dir = b_dir;
  p_udf_dirent->b_parent = b_parent;
  p_udf_dirent->p_udf = p_udf;
  p_udf_dirent->i_part_start = p_udf->i_part_start;
  p_udf_dirent->dir_left = uint64_from_le(p_udf_fe->info_len);

  memcpy(&(p_udf_dirent->fe), p_udf_fe,
  sizeof(udf_file_entry_t));
  udf_get_lba( p_udf_fe, &(p_udf_dirent->i_loc),
        &(p_udf_dirent->i_loc_end) );
  return p_udf_dirent;
}
