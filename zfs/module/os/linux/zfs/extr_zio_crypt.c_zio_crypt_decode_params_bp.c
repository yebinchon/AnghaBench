
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_9__ {TYPE_1__* blk_dva; } ;
typedef TYPE_2__ blkptr_t ;
struct TYPE_8__ {scalar_t__* dva_word; } ;


 int ASSERT (int ) ;
 int BP_GET_IV2 (TYPE_2__ const*) ;
 scalar_t__ BP_IS_AUTHENTICATED (TYPE_2__ const*) ;
 int BP_IS_PROTECTED (TYPE_2__ const*) ;
 int BP_SHOULD_BYTESWAP (TYPE_2__ const*) ;
 scalar_t__ BSWAP_32 (scalar_t__) ;
 scalar_t__ BSWAP_64 (scalar_t__) ;
 int ZIO_DATA_IV_LEN ;
 int ZIO_DATA_SALT_LEN ;
 int bcopy (scalar_t__*,int *,int) ;
 int bzero (int *,int ) ;

void
zio_crypt_decode_params_bp(const blkptr_t *bp, uint8_t *salt, uint8_t *iv)
{
 uint64_t val64;
 uint32_t val32;

 ASSERT(BP_IS_PROTECTED(bp));


 if (BP_IS_AUTHENTICATED(bp)) {
  bzero(salt, ZIO_DATA_SALT_LEN);
  bzero(iv, ZIO_DATA_IV_LEN);
  return;
 }

 if (!BP_SHOULD_BYTESWAP(bp)) {
  bcopy(&bp->blk_dva[2].dva_word[0], salt, sizeof (uint64_t));
  bcopy(&bp->blk_dva[2].dva_word[1], iv, sizeof (uint64_t));

  val32 = (uint32_t)BP_GET_IV2(bp);
  bcopy(&val32, iv + sizeof (uint64_t), sizeof (uint32_t));
 } else {
  val64 = BSWAP_64(bp->blk_dva[2].dva_word[0]);
  bcopy(&val64, salt, sizeof (uint64_t));

  val64 = BSWAP_64(bp->blk_dva[2].dva_word[1]);
  bcopy(&val64, iv, sizeof (uint64_t));

  val32 = BSWAP_32((uint32_t)BP_GET_IV2(bp));
  bcopy(&val32, iv + sizeof (uint64_t), sizeof (uint32_t));
 }
}
