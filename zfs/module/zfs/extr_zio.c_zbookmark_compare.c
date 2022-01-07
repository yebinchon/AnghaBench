
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ zb_object; scalar_t__ zb_level; scalar_t__ zb_blkid; } ;
typedef TYPE_1__ zbookmark_phys_t ;
typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__ BP_SPANB (scalar_t__,scalar_t__) ;
 scalar_t__ COMPARE_META_LEVEL ;
 scalar_t__ DMU_META_DNODE_OBJECT ;
 scalar_t__ DNODE_SHIFT ;
 int IMPLY (int,int) ;
 scalar_t__ SPA_MINBLOCKSHIFT ;

int
zbookmark_compare(uint16_t dbss1, uint8_t ibs1, uint16_t dbss2, uint8_t ibs2,
    const zbookmark_phys_t *zb1, const zbookmark_phys_t *zb2)
{





 uint64_t zb1obj, zb2obj;
 uint64_t zb1L0, zb2L0;
 uint64_t zb1level, zb2level;

 if (zb1->zb_object == zb2->zb_object &&
     zb1->zb_level == zb2->zb_level &&
     zb1->zb_blkid == zb2->zb_blkid)
  return (0);

 IMPLY(zb1->zb_level > 0, ibs1 >= SPA_MINBLOCKSHIFT);
 IMPLY(zb2->zb_level > 0, ibs2 >= SPA_MINBLOCKSHIFT);




 zb1L0 = (zb1->zb_blkid) * BP_SPANB(ibs1, zb1->zb_level);
 zb2L0 = (zb2->zb_blkid) * BP_SPANB(ibs2, zb2->zb_level);

 if (zb1->zb_object == DMU_META_DNODE_OBJECT) {
  zb1obj = zb1L0 * (dbss1 << (SPA_MINBLOCKSHIFT - DNODE_SHIFT));
  zb1L0 = 0;
  zb1level = zb1->zb_level + COMPARE_META_LEVEL;
 } else {
  zb1obj = zb1->zb_object;
  zb1level = zb1->zb_level;
 }

 if (zb2->zb_object == DMU_META_DNODE_OBJECT) {
  zb2obj = zb2L0 * (dbss2 << (SPA_MINBLOCKSHIFT - DNODE_SHIFT));
  zb2L0 = 0;
  zb2level = zb2->zb_level + COMPARE_META_LEVEL;
 } else {
  zb2obj = zb2->zb_object;
  zb2level = zb2->zb_level;
 }


 if (zb1obj != zb2obj)
  return (zb1obj < zb2obj ? -1 : 1);
 else if (zb1L0 != zb2L0)
  return (zb1L0 < zb2L0 ? -1 : 1);
 else if (zb1level != zb2level)
  return (zb1level > zb2level ? -1 : 1);





 return (0);
}
