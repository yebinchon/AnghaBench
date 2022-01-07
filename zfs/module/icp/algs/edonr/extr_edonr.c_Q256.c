
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 size_t EdonR256_BLOCK_BITSIZE ;
 int LS1_256 (int const,int,int,int,int,int,int,int,int) ;
 int LS2_256 (int const,int,int,int,int,int,int,int,int) ;
 int d (int) ;
 int quasi_exform256 (int,int,int,int,int,int,int,int) ;
 int s32 (int) ;

__attribute__((used)) static size_t
Q256(size_t bitlen, const uint32_t *data, uint32_t *restrict p)
{
 size_t bl;

 for (bl = bitlen; bl >= EdonR256_BLOCK_BITSIZE;
     bl -= EdonR256_BLOCK_BITSIZE, data += 16) {
  uint32_t s0, s1, s2, s3, s4, s5, s6, s7, t0, t1, t2, t3, t4,
      t5, t6, t7;
  uint32_t p0, p1, p2, p3, p4, p5, p6, p7, q0, q1, q2, q3, q4,
      q5, q6, q7;
  const uint32_t defix = 0xaaaaaaaa;
  LS1_256(defix, data[15], data[14], data[13], data[12], data[11], data[10], data[9],
      data[8]);
  LS2_256(defix, data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7]);
  quasi_exform256(p0, p1, p2, p3, p4, p5, p6, p7);

  LS1_256(defix, p0, p1, p2, p3, p4, p5, p6, p7);
  LS2_256(defix, data[8], data[9], data[10], data[11], data[12], data[13], data[14],
      data[15]);
  quasi_exform256(q0, q1, q2, q3, q4, q5, q6, q7);


  LS1_256(defix, p[8], p[9], p[10], p[11], p[12], p[13], p[14],
      p[15]);
  LS2_256(defix, p0, p1, p2, p3, p4, p5, p6, p7);
  quasi_exform256(p0, p1, p2, p3, p4, p5, p6, p7);

  LS1_256(defix, p0, p1, p2, p3, p4, p5, p6, p7);
  LS2_256(defix, q0, q1, q2, q3, q4, q5, q6, q7);
  quasi_exform256(q0, q1, q2, q3, q4, q5, q6, q7);


  LS1_256(defix, p0, p1, p2, p3, p4, p5, p6, p7);
  LS2_256(defix, p[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7]);
  quasi_exform256(p0, p1, p2, p3, p4, p5, p6, p7);

  LS1_256(defix, q0, q1, q2, q3, q4, q5, q6, q7);
  LS2_256(defix, p0, p1, p2, p3, p4, p5, p6, p7);
  quasi_exform256(q0, q1, q2, q3, q4, q5, q6, q7);


  LS1_256(defix, data[7], data[6], data[5], data[4], data[3], data[2], data[1], data[0]);
  LS2_256(defix, p0, p1, p2, p3, p4, p5, p6, p7);
  quasi_exform256(p0, p1, p2, p3, p4, p5, p6, p7);

  LS1_256(defix, p0, p1, p2, p3, p4, p5, p6, p7);
  LS2_256(defix, q0, q1, q2, q3, q4, q5, q6, q7);
  quasi_exform256(q0, q1, q2, q3, q4, q5, q6, q7);


  p[0] ^= data[8] ^ p0;
  p[1] ^= data[9] ^ p1;
  p[2] ^= data[10] ^ p2;
  p[3] ^= data[11] ^ p3;
  p[4] ^= data[12] ^ p4;
  p[5] ^= data[13] ^ p5;
  p[6] ^= data[14] ^ p6;
  p[7] ^= data[15] ^ p7;
  p[8] ^= data[0] ^ q0;
  p[9] ^= data[1] ^ q1;
  p[10] ^= data[2] ^ q2;
  p[11] ^= data[3] ^ q3;
  p[12] ^= data[4] ^ q4;
  p[13] ^= data[5] ^ q5;
  p[14] ^= data[6] ^ q6;
  p[15] ^= data[7] ^ q7;
 }


 return (bitlen - bl);
}
