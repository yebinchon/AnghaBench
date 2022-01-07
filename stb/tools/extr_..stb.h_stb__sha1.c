
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_uint ;
typedef int stb_uchar ;


 int STB__SHA1 (int,int) ;
 int stb_big32 (int *) ;

__attribute__((used)) static void stb__sha1(stb_uchar *chunk, stb_uint h[5])
{
   int i;
   stb_uint a,b,c,d,e;
   stb_uint w[80];

   for (i=0; i < 16; ++i)
      w[i] = stb_big32(&chunk[i*4]);
   for (i=16; i < 80; ++i) {
      stb_uint t;
      t = w[i-3] ^ w[i-8] ^ w[i-14] ^ w[i-16];
      w[i] = (t + t) | (t >> 31);
   }

   a = h[0];
   b = h[1];
   c = h[2];
   d = h[3];
   e = h[4];
   i=0;
   for (; i < 20; ++i) { stb_uint temp = (a << 5) + (a >> 27) + (d ^ (b & (c ^ d))) + e + (0x5a827999) + w[i]; e = d; d = c; c = (b << 30) + (b >> 2); b = a; a = temp; };
   for (; i < 40; ++i) { stb_uint temp = (a << 5) + (a >> 27) + (b ^ c ^ d) + e + (0x6ed9eba1) + w[i]; e = d; d = c; c = (b << 30) + (b >> 2); b = a; a = temp; };
   for (; i < 60; ++i) { stb_uint temp = (a << 5) + (a >> 27) + ((b & c) + (d & (b ^ c))) + e + (0x8f1bbcdc) + w[i]; e = d; d = c; c = (b << 30) + (b >> 2); b = a; a = temp; };
   for (; i < 80; ++i) { stb_uint temp = (a << 5) + (a >> 27) + (b ^ c ^ d) + e + (0xca62c1d6) + w[i]; e = d; d = c; c = (b << 30) + (b >> 2); b = a; a = temp; };



   h[0] += a;
   h[1] += b;
   h[2] += c;
   h[3] += d;
   h[4] += e;
}
