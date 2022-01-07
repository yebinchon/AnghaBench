
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int AES_XOR_BLOCK (int *,int *) ;
 scalar_t__ IS_P2ALIGNED2 (int *,int *,int) ;

void
aes_xor_block(uint8_t *data, uint8_t *dst)
{
 if (IS_P2ALIGNED2(dst, data, sizeof (uint32_t))) {

  *(uint32_t *)&dst[0] ^= *(uint32_t *)&data[0];

  *(uint32_t *)&dst[4] ^= *(uint32_t *)&data[4];

  *(uint32_t *)&dst[8] ^= *(uint32_t *)&data[8];

  *(uint32_t *)&dst[12] ^= *(uint32_t *)&data[12];
 } else {
  AES_XOR_BLOCK(data, dst);
 }
}
