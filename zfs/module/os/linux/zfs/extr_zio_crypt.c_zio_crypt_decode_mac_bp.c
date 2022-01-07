
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_8__ {int * zc_word; } ;
struct TYPE_9__ {TYPE_1__ blk_cksum; } ;
typedef TYPE_2__ blkptr_t ;


 int ASSERT (int) ;
 scalar_t__ BP_GET_TYPE (TYPE_2__ const*) ;
 scalar_t__ BP_IS_HOLE (TYPE_2__ const*) ;
 int BP_SHOULD_BYTESWAP (TYPE_2__ const*) ;
 scalar_t__ BP_USES_CRYPT (TYPE_2__ const*) ;
 int BSWAP_64 (int ) ;
 scalar_t__ DMU_OT_OBJSET ;
 int ZIO_DATA_MAC_LEN ;
 int bcopy (int *,int *,int) ;
 int bzero (int *,int ) ;

void
zio_crypt_decode_mac_bp(const blkptr_t *bp, uint8_t *mac)
{
 uint64_t val64;

 ASSERT(BP_USES_CRYPT(bp) || BP_IS_HOLE(bp));


 if (BP_GET_TYPE(bp) == DMU_OT_OBJSET) {
  bzero(mac, ZIO_DATA_MAC_LEN);
  return;
 }

 if (!BP_SHOULD_BYTESWAP(bp)) {
  bcopy(&bp->blk_cksum.zc_word[2], mac, sizeof (uint64_t));
  bcopy(&bp->blk_cksum.zc_word[3], mac + sizeof (uint64_t),
      sizeof (uint64_t));
 } else {
  val64 = BSWAP_64(bp->blk_cksum.zc_word[2]);
  bcopy(&val64, mac, sizeof (uint64_t));

  val64 = BSWAP_64(bp->blk_cksum.zc_word[3]);
  bcopy(&val64, mac + sizeof (uint64_t), sizeof (uint64_t));
 }
}
