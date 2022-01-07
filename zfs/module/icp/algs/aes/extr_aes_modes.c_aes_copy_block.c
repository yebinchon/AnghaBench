
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int AES_COPY_BLOCK (int *,int *) ;
 scalar_t__ IS_P2ALIGNED2 (int *,int *,int) ;

void
aes_copy_block(uint8_t *in, uint8_t *out)
{
 if (IS_P2ALIGNED2(in, out, sizeof (uint32_t))) {

  *(uint32_t *)&out[0] = *(uint32_t *)&in[0];

  *(uint32_t *)&out[4] = *(uint32_t *)&in[4];

  *(uint32_t *)&out[8] = *(uint32_t *)&in[8];

  *(uint32_t *)&out[12] = *(uint32_t *)&in[12];
 } else {
  AES_COPY_BLOCK(in, out);
 }
}
