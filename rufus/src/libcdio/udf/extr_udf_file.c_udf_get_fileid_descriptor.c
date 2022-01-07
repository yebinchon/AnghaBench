
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int udf_fileid_desc_t ;
struct TYPE_3__ {int fid; } ;
typedef TYPE_1__ udf_dirent_t ;


 int memcpy (int *,int ,int) ;

bool udf_get_fileid_descriptor(const udf_dirent_t *p_udf_dirent,
                  udf_fileid_desc_t *p_udf_fid)
{

  if (!p_udf_dirent) return 0;
  if (!p_udf_dirent->fid) {

    return 0;
  }
  memcpy(p_udf_fid, p_udf_dirent->fid, sizeof(udf_fileid_desc_t));
  return 1;
}
