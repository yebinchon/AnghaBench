
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t STBDS_SIPHASH_C_ROUNDS ;
 size_t STBDS_SIPHASH_D_ROUNDS ;
 int STBDS_SIPROUND () ;
 int STBDS_SIZE_T_BITS ;

__attribute__((used)) static size_t stbds_siphash_bytes(void *p, size_t len, size_t seed)
{
  unsigned char *d = (unsigned char *) p;
  size_t i,j;
  size_t v0,v1,v2,v3, data;




  v0 = ((((size_t) 0x736f6d65 << 16) << 16) + 0x70736575) ^ seed;
  v1 = ((((size_t) 0x646f7261 << 16) << 16) + 0x6e646f6d) ^ ~seed;
  v2 = ((((size_t) 0x6c796765 << 16) << 16) + 0x6e657261) ^ seed;
  v3 = ((((size_t) 0x74656462 << 16) << 16) + 0x79746573) ^ ~seed;
  for (i=0; i+sizeof(size_t) <= len; i += sizeof(size_t), d += sizeof(size_t)) {
    data = d[0] | (d[1] << 8) | (d[2] << 16) | (d[3] << 24);
    data |= (size_t) (d[4] | (d[5] << 8) | (d[6] << 16) | (d[7] << 24)) << 16 << 16;

    v3 ^= data;
    for (j=0; j < STBDS_SIPHASH_C_ROUNDS; ++j)
      do { v0 += v1; v1 = STBDS_ROTATE_LEFT(v1, 13); v1 ^= v0; v0 = STBDS_ROTATE_LEFT(v0,STBDS_SIZE_T_BITS/2); v2 += v3; v3 = STBDS_ROTATE_LEFT(v3, 16); v3 ^= v2; v2 += v1; v1 = STBDS_ROTATE_LEFT(v1, 17); v1 ^= v2; v2 = STBDS_ROTATE_LEFT(v2,STBDS_SIZE_T_BITS/2); v0 += v3; v3 = STBDS_ROTATE_LEFT(v3, 21); v3 ^= v0; } while (0);
    v0 ^= data;
  }
  data = len << (STBDS_SIZE_T_BITS-8);
  switch (len - i) {
    case 7: data |= ((size_t) d[6] << 24) << 24;
    case 6: data |= ((size_t) d[5] << 20) << 20;
    case 5: data |= ((size_t) d[4] << 16) << 16;
    case 4: data |= (d[3] << 24);
    case 3: data |= (d[2] << 16);
    case 2: data |= (d[1] << 8);
    case 1: data |= d[0];
    case 0: break;
  }
  v3 ^= data;
  for (j=0; j < STBDS_SIPHASH_C_ROUNDS; ++j)
    do { v0 += v1; v1 = STBDS_ROTATE_LEFT(v1, 13); v1 ^= v0; v0 = STBDS_ROTATE_LEFT(v0,STBDS_SIZE_T_BITS/2); v2 += v3; v3 = STBDS_ROTATE_LEFT(v3, 16); v3 ^= v2; v2 += v1; v1 = STBDS_ROTATE_LEFT(v1, 17); v1 ^= v2; v2 = STBDS_ROTATE_LEFT(v2,STBDS_SIZE_T_BITS/2); v0 += v3; v3 = STBDS_ROTATE_LEFT(v3, 21); v3 ^= v0; } while (0);
  v0 ^= data;
  v2 ^= 0xff;
  for (j=0; j < STBDS_SIPHASH_D_ROUNDS; ++j)
    do { v0 += v1; v1 = STBDS_ROTATE_LEFT(v1, 13); v1 ^= v0; v0 = STBDS_ROTATE_LEFT(v0,STBDS_SIZE_T_BITS/2); v2 += v3; v3 = STBDS_ROTATE_LEFT(v3, 16); v3 ^= v2; v2 += v1; v1 = STBDS_ROTATE_LEFT(v1, 17); v1 ^= v2; v2 = STBDS_ROTATE_LEFT(v2,STBDS_SIZE_T_BITS/2); v0 += v3; v3 = STBDS_ROTATE_LEFT(v3, 21); v3 ^= v0; } while (0);



  return v1^v2^v3;

}
