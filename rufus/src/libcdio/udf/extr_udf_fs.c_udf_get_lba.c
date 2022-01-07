
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_14__ {int len; int pos; } ;
typedef TYPE_5__ udf_short_ad_t ;
struct TYPE_11__ {int lba; } ;
struct TYPE_15__ {int len; TYPE_2__ loc; } ;
typedef TYPE_6__ udf_long_ad_t ;
struct TYPE_12__ {int ext_attr; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_16__ {int i_extended_attr; TYPE_3__ u; TYPE_1__ icb_tag; int i_alloc_descs; } ;
typedef TYPE_7__ udf_file_entry_t ;
struct TYPE_13__ {int lba; } ;
struct TYPE_17__ {int len; TYPE_4__ ext_loc; } ;
typedef TYPE_8__ udf_ext_ad_t ;




 int ICBTAG_FLAG_AD_MASK ;

 int UDF_BLOCKSIZE ;
 int UDF_LENGTH_MASK ;
 int uint32_from_le (int ) ;

bool
udf_get_lba(const udf_file_entry_t *p_udf_fe,
             uint32_t *start, uint32_t *end)
{
  if (! p_udf_fe->i_alloc_descs)
    return 0;

  switch (p_udf_fe->icb_tag.flags & ICBTAG_FLAG_AD_MASK) {
  case 128:
    {

      udf_short_ad_t *p_ad = (udf_short_ad_t *)
 (p_udf_fe->u.ext_attr + uint32_from_le(p_udf_fe->i_extended_attr));

      *start = uint32_from_le(p_ad->pos);
      *end = *start +
 ((uint32_from_le(p_ad->len) & UDF_LENGTH_MASK) - 1) / UDF_BLOCKSIZE;
      return 1;
    }
    break;
  case 129:
    {

      udf_long_ad_t *p_ad = (udf_long_ad_t *)
 (p_udf_fe->u.ext_attr + uint32_from_le(p_udf_fe->i_extended_attr));

      *start = uint32_from_le(p_ad->loc.lba);
      *end = *start +
 ((uint32_from_le(p_ad->len) & UDF_LENGTH_MASK) - 1) / UDF_BLOCKSIZE;
      return 1;
    }
    break;
  case 130:
    {
      udf_ext_ad_t *p_ad = (udf_ext_ad_t *)
 (p_udf_fe->u.ext_attr + uint32_from_le(p_udf_fe->i_extended_attr));

      *start = uint32_from_le(p_ad->ext_loc.lba);
      *end = *start +
 ((uint32_from_le(p_ad->len) & UDF_LENGTH_MASK) - 1) / UDF_BLOCKSIZE;
      return 1;
    }
    break;
  default:
    return 0;
  }
  return 0;
}
