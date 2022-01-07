
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ zi_objset; scalar_t__ zi_object; scalar_t__ zi_type; scalar_t__ zi_level; scalar_t__ zi_start; scalar_t__ zi_end; unsigned long long zi_dvas; int zi_error; int zi_freq; } ;
typedef TYPE_1__ zinject_record_t ;
struct TYPE_6__ {scalar_t__ zb_objset; scalar_t__ zb_object; scalar_t__ zb_level; scalar_t__ zb_blkid; } ;
typedef TYPE_2__ zbookmark_phys_t ;
typedef scalar_t__ uint64_t ;
typedef int boolean_t ;


 int B_FALSE ;
 scalar_t__ DMU_META_DNODE_OBJECT ;
 scalar_t__ DMU_META_OBJSET ;
 scalar_t__ DMU_OT_NONE ;
 int freq_triggered (int ) ;

__attribute__((used)) static boolean_t
zio_match_handler(const zbookmark_phys_t *zb, uint64_t type, int dva,
    zinject_record_t *record, int error)
{



 if (zb->zb_objset == DMU_META_OBJSET &&
     record->zi_objset == DMU_META_OBJSET &&
     record->zi_object == DMU_META_DNODE_OBJECT) {
  if (record->zi_type == DMU_OT_NONE ||
      type == record->zi_type)
   return (freq_triggered(record->zi_freq));
  else
   return (B_FALSE);
 }




 if (zb->zb_objset == record->zi_objset &&
     zb->zb_object == record->zi_object &&
     zb->zb_level == record->zi_level &&
     zb->zb_blkid >= record->zi_start &&
     zb->zb_blkid <= record->zi_end &&
     (record->zi_dvas == 0 || (record->zi_dvas & (1ULL << dva))) &&
     error == record->zi_error) {
  return (freq_triggered(record->zi_freq));
 }

 return (B_FALSE);
}
