
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_10__ {scalar_t__ i_part_start; } ;
typedef TYPE_2__ udf_t ;
struct TYPE_11__ {scalar_t__ len; scalar_t__ pos; } ;
typedef TYPE_3__ udf_short_ad_t ;
struct TYPE_9__ {int lba; } ;
struct TYPE_12__ {scalar_t__ len; TYPE_1__ loc; } ;
typedef TYPE_4__ udf_long_ad_t ;
struct TYPE_13__ {int strat_type; int flags; } ;
typedef TYPE_5__ udf_icbtag_t ;
struct TYPE_14__ {int i_extended_attr; int i_alloc_descs; TYPE_5__ icb_tag; } ;
typedef TYPE_6__ udf_file_entry_t ;
struct TYPE_15__ {int fe; TYPE_2__* p_udf; } ;
typedef TYPE_7__ udf_dirent_t ;
typedef scalar_t__ off_t ;
typedef scalar_t__ lba_t ;


 scalar_t__ CDIO_INVALID_LBA ;
 scalar_t__ DRIVER_OP_ERROR ;
 scalar_t__ GETICB (int ) ;



 int ICBTAG_FLAG_AD_MASK ;


 scalar_t__ UDF_BLOCKSIZE ;
 int cdio_warn (char*,...) ;
 void* uint16_from_le (int) ;
 scalar_t__ uint32_from_le (int ) ;

__attribute__((used)) static lba_t
offset_to_lba(const udf_dirent_t *p_udf_dirent, off_t i_offset,
               lba_t *pi_lba, uint32_t *pi_max_size)
{
  udf_t *p_udf = p_udf_dirent->p_udf;
  const udf_file_entry_t *p_udf_fe = (udf_file_entry_t *)
    &p_udf_dirent->fe;
  const udf_icbtag_t *p_icb_tag = &p_udf_fe->icb_tag;
  const uint16_t strat_type= uint16_from_le(p_icb_tag->strat_type);

  if (i_offset < 0) {
    cdio_warn("Negative offset value");
    return CDIO_INVALID_LBA;
  }

  switch (strat_type) {
  case 4096:
    cdio_warn("Cannot deal with strategy4096 yet!");
    return CDIO_INVALID_LBA;
    break;
  case 128:
    {
      off_t icblen = 0;
      uint64_t lsector;
      int ad_offset, ad_num = 0;
      uint16_t addr_ilk = uint16_from_le(p_icb_tag->flags&ICBTAG_FLAG_AD_MASK);

      switch (addr_ilk) {
      case 129:
 {
   udf_short_ad_t *p_icb;





   do {
     i_offset -= icblen;
     ad_offset = sizeof(udf_short_ad_t) * ad_num;
     if (ad_offset > uint32_from_le(p_udf_fe->i_alloc_descs)) {
       cdio_warn("File offset out of bounds");
       return CDIO_INVALID_LBA;
     }
     p_icb = (udf_short_ad_t *)
       GETICB( uint32_from_le(p_udf_fe->i_extended_attr)
        + ad_offset );
     icblen = p_icb->len;
     ad_num++;
   } while(i_offset >= icblen);

   lsector = (i_offset / UDF_BLOCKSIZE) + p_icb->pos;

   *pi_max_size = p_icb->len;
 }
 break;
      case 130:
 {





   udf_long_ad_t *p_icb;
   do {
     i_offset -= icblen;
     ad_offset = sizeof(udf_long_ad_t) * ad_num;
     if (ad_offset > uint32_from_le(p_udf_fe->i_alloc_descs)) {
       cdio_warn("File offset out of bounds");
       return CDIO_INVALID_LBA;
     }
     p_icb = (udf_long_ad_t *)
       GETICB( uint32_from_le(p_udf_fe->i_extended_attr)
        + ad_offset );
     icblen = p_icb->len;
     ad_num++;
   } while(i_offset >= icblen);

   lsector = (i_offset / UDF_BLOCKSIZE) +
     uint32_from_le(((udf_long_ad_t *)(p_icb))->loc.lba);

   *pi_max_size = p_icb->len;
 }
 break;
      case 131:




 *pi_max_size = 0;
 cdio_warn("Don't know how to data in ICB handle yet");
 return CDIO_INVALID_LBA;
      case 132:
 cdio_warn("Don't know how to handle extended addresses yet");
 return CDIO_INVALID_LBA;
      default:
 cdio_warn("Unsupported allocation descriptor %d", addr_ilk);
 return CDIO_INVALID_LBA;
      }

      *pi_lba = (lba_t)lsector + p_udf->i_part_start;
      if (*pi_lba < 0) {
 cdio_warn("Negative LBA value");
 return CDIO_INVALID_LBA;
      }
      return *pi_lba;
    }
  default:
    cdio_warn("Unknown strategy type %d", strat_type);
    return DRIVER_OP_ERROR;
  }
}
