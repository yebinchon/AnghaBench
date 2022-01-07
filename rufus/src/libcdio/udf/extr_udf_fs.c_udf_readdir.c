
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_16__ {int i_part_start; scalar_t__ i_position; } ;
typedef TYPE_5__ udf_t ;
struct TYPE_14__ {scalar_t__ data; } ;
struct TYPE_15__ {int i_imp_use; TYPE_3__ imp_use; } ;
struct TYPE_12__ {int lba; } ;
struct TYPE_13__ {TYPE_1__ loc; } ;
struct TYPE_17__ {int i_file_id; int file_characteristics; TYPE_4__ u; TYPE_2__ icb; int tag; } ;
typedef TYPE_6__ udf_fileid_desc_t ;
struct TYPE_18__ {scalar_t__ dir_left; int i_loc_end; int i_loc; int i_part_start; int b_dir; int b_parent; int psz_name; TYPE_6__* fid; int fe; int * sector; TYPE_5__* p_udf; } ;
typedef TYPE_7__ udf_dirent_t ;
typedef scalar_t__ driver_return_code_t ;


 scalar_t__ DRIVER_OP_SUCCESS ;
 int TAGID_FID ;
 int UDF_BLOCKSIZE ;
 int UDF_FILE_DIRECTORY ;
 int UDF_FILE_PARENT ;
 int free_and_null (int ) ;
 scalar_t__ malloc (int) ;
 int udf_checktag (int *,int ) ;
 int udf_dirent_free (TYPE_7__*) ;
 scalar_t__ udf_read_sectors (TYPE_5__*,int *,int,int) ;
 int uint32_from_le (int ) ;
 int unicode16_decode (int *,unsigned int const) ;

udf_dirent_t *
udf_readdir(udf_dirent_t *p_udf_dirent)
{
  udf_t *p_udf;
  uint8_t* p;

  if (p_udf_dirent->dir_left <= 0) {
    udf_dirent_free(p_udf_dirent);
    return ((void*)0);
  }


  p_udf = p_udf_dirent->p_udf;
  p_udf->i_position = 0;

  if (p_udf_dirent->fid) {


    uint32_t ofs = 4 *
      ((sizeof(*(p_udf_dirent->fid)) + p_udf_dirent->fid->u.i_imp_use
 + p_udf_dirent->fid->i_file_id + 3) / 4);

    p_udf_dirent->fid =
      (udf_fileid_desc_t *)((uint8_t *)p_udf_dirent->fid + ofs);
  }

  if (!p_udf_dirent->fid) {
    uint32_t i_sectors =
      (p_udf_dirent->i_loc_end - p_udf_dirent->i_loc + 1);
    uint32_t size = UDF_BLOCKSIZE * i_sectors;
    driver_return_code_t i_ret;

    if (!p_udf_dirent->sector)
      p_udf_dirent->sector = (uint8_t*) malloc(size);
    i_ret = udf_read_sectors(p_udf, p_udf_dirent->sector,
        p_udf_dirent->i_part_start+p_udf_dirent->i_loc,
        i_sectors);
    if (DRIVER_OP_SUCCESS == i_ret)
      p_udf_dirent->fid = (udf_fileid_desc_t *) p_udf_dirent->sector;
    else
      p_udf_dirent->fid = ((void*)0);
  }

  if (p_udf_dirent->fid && !udf_checktag(&(p_udf_dirent->fid->tag), TAGID_FID))
    {
      uint32_t ofs =
 4 * ((sizeof(*p_udf_dirent->fid) + p_udf_dirent->fid->u.i_imp_use
       + p_udf_dirent->fid->i_file_id + 3) / 4);

      p_udf_dirent->dir_left -= ofs;
      p_udf_dirent->b_dir =
 (p_udf_dirent->fid->file_characteristics & UDF_FILE_DIRECTORY) != 0;
      p_udf_dirent->b_parent =
 (p_udf_dirent->fid->file_characteristics & UDF_FILE_PARENT) != 0;

      {
 const unsigned int i_len = p_udf_dirent->fid->i_file_id;

 if (DRIVER_OP_SUCCESS != udf_read_sectors(p_udf, &p_udf_dirent->fe, p_udf->i_part_start
    + uint32_from_le(p_udf_dirent->fid->icb.loc.lba), 1)) {
  udf_dirent_free(p_udf_dirent);
  return ((void*)0);
 }

       free_and_null(p_udf_dirent->psz_name);
       p = (uint8_t*)p_udf_dirent->fid->u.imp_use.data + p_udf_dirent->fid->u.i_imp_use;
       p_udf_dirent->psz_name = unicode16_decode(p, i_len);
      }
      return p_udf_dirent;
    }
  udf_dirent_free(p_udf_dirent);
  return ((void*)0);
}
