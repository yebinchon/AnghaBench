
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int * ks32; } ;
struct TYPE_5__ {int nr; TYPE_1__ encr_ks; TYPE_3__* ops; } ;
typedef TYPE_2__ aes_key_t ;
struct TYPE_6__ {scalar_t__ needs_byteswap; int (* encrypt ) (int *,int ,int *,int *) ;} ;
typedef TYPE_3__ aes_impl_ops_t ;


 int AES_BLOCK_LEN ;
 int CRYPTO_SUCCESS ;
 scalar_t__ IS_P2ALIGNED2 (int * const*,int **,int) ;
 int bcopy (int **,int **,int) ;
 int htonl (int ) ;
 int stub1 (int *,int ,int *,int *) ;
 int stub2 (int *,int ,int *,int *) ;

int
aes_encrypt_block(const void *ks, const uint8_t *pt, uint8_t *ct)
{
 aes_key_t *ksch = (aes_key_t *)ks;
 const aes_impl_ops_t *ops = ksch->ops;

 if (IS_P2ALIGNED2(pt, ct, sizeof (uint32_t)) && !ops->needs_byteswap) {

  ops->encrypt(&ksch->encr_ks.ks32[0], ksch->nr,

      (uint32_t *)pt, (uint32_t *)ct);
 } else {
  uint32_t buffer[AES_BLOCK_LEN / sizeof (uint32_t)];


  if (ops->needs_byteswap) {
   buffer[0] = htonl(*(uint32_t *)(void *)&pt[0]);
   buffer[1] = htonl(*(uint32_t *)(void *)&pt[4]);
   buffer[2] = htonl(*(uint32_t *)(void *)&pt[8]);
   buffer[3] = htonl(*(uint32_t *)(void *)&pt[12]);
  } else
   bcopy(pt, &buffer, AES_BLOCK_LEN);

  ops->encrypt(&ksch->encr_ks.ks32[0], ksch->nr, buffer, buffer);


  if (ops->needs_byteswap) {
   *(uint32_t *)(void *)&ct[0] = htonl(buffer[0]);
   *(uint32_t *)(void *)&ct[4] = htonl(buffer[1]);
   *(uint32_t *)(void *)&ct[8] = htonl(buffer[2]);
   *(uint32_t *)(void *)&ct[12] = htonl(buffer[3]);
  } else
   bcopy(&buffer, ct, AES_BLOCK_LEN);
 }
 return (CRYPTO_SUCCESS);
}
