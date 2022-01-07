
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;


 size_t LEFTROTATE (size_t,int ) ;
 size_t* k ;
 int * r ;

__attribute__((used)) static void
digest_md5(uint32_t w[16], uint32_t result[4]) {
 uint32_t a, b, c, d, f, g, temp;
 int i;

 a = 0x67452301u;
 b = 0xefcdab89u;
 c = 0x98badcfeu;
 d = 0x10325476u;

 for(i = 0; i<64; i++) {
  if (i < 16) {
   f = (b & c) | ((~b) & d);
   g = i;
  } else if (i < 32) {
   f = (d & b) | ((~d) & c);
   g = (5*i + 1) % 16;
  } else if (i < 48) {
   f = b ^ c ^ d;
   g = (3*i + 5) % 16;
  } else {
   f = c ^ (b | (~d));
   g = (7*i) % 16;
  }

  temp = d;
  d = c;
  c = b;
  b = b + LEFTROTATE((a + f + k[i] + w[g]), r[i]);
  a = temp;
 }

 result[0] = a;
 result[1] = b;
 result[2] = c;
 result[3] = d;
}
