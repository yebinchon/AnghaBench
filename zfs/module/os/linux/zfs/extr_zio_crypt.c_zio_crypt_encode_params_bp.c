
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint64_t ;
typedef void* uint32_t ;
struct TYPE_8__ {TYPE_1__* blk_dva; } ;
typedef TYPE_2__ blkptr_t ;
struct TYPE_7__ {void** dva_word; } ;


 int ASSERT (int ) ;
 int BP_IS_ENCRYPTED (TYPE_2__*) ;
 int BP_SET_IV2 (TYPE_2__*,void*) ;
 int BP_SHOULD_BYTESWAP (TYPE_2__*) ;
 void* BSWAP_32 (void*) ;
 void* BSWAP_64 (void*) ;
 int bcopy (int *,void**,int) ;

void
zio_crypt_encode_params_bp(blkptr_t *bp, uint8_t *salt, uint8_t *iv)
{
 uint64_t val64;
 uint32_t val32;

 ASSERT(BP_IS_ENCRYPTED(bp));

 if (!BP_SHOULD_BYTESWAP(bp)) {
  bcopy(salt, &bp->blk_dva[2].dva_word[0], sizeof (uint64_t));
  bcopy(iv, &bp->blk_dva[2].dva_word[1], sizeof (uint64_t));
  bcopy(iv + sizeof (uint64_t), &val32, sizeof (uint32_t));
  BP_SET_IV2(bp, val32);
 } else {
  bcopy(salt, &val64, sizeof (uint64_t));
  bp->blk_dva[2].dva_word[0] = BSWAP_64(val64);

  bcopy(iv, &val64, sizeof (uint64_t));
  bp->blk_dva[2].dva_word[1] = BSWAP_64(val64);

  bcopy(iv + sizeof (uint64_t), &val32, sizeof (uint32_t));
  BP_SET_IV2(bp, BSWAP_32(val32));
 }
}
