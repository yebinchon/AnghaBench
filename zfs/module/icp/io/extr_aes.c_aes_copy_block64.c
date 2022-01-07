
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int AES_COPY_BLOCK (int *,int *) ;
 scalar_t__ IS_P2ALIGNED (int *,int) ;

__attribute__((used)) static void
aes_copy_block64(uint8_t *in, uint64_t *out)
{
 if (IS_P2ALIGNED(in, sizeof (uint64_t))) {

  out[0] = *(uint64_t *)&in[0];

  out[1] = *(uint64_t *)&in[8];
 } else {
  uint8_t *iv8 = (uint8_t *)&out[0];

  AES_COPY_BLOCK(in, iv8);
 }
}
